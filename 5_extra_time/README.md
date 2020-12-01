# Extra Time

In case there is time remaining in the session...

There are two 'real world' databases which you can explore. These are the [airline flights to russia](https://postgrespro.com/education/demodb) and [dvd rentals](https://www.postgresqltutorial.com/postgresql-sample-database/) datasets. Here we will examine these databases. You may wish to carry out operations on them in your own time.

## Installation

If you wish to import these databases into your local database instance then either import the sql file after creating the table, like so

```bash
psql demo < demo-small-en-20170815.sql
```

or, if you are Linux, decomment the lines at the end of the ansible playbook.

## Exploration

To connect to the airlines database run

```bash
\c demo
```

and to connect to the dvd rental database run the below.

```bash
\c dvdrentals
```

The database diagrams for these are [here](https://postgrespro.com/docs/postgrespro/10/apjs02.html) and [here](https://www.postgresqltutorial.com/postgresql-sample-database/). The flights database is simpler so you may want to start with that.

Start by exploring the database.

```bash
\d
```

Then examine tables more closely, for instance, the seats table in the demo database.

```sql
demo=# \d seats
                          Table "bookings.seats"
     Column      |         Type          | Collation | Nullable | Default 
-----------------+-----------------------+-----------+----------+---------
 aircraft_code   | character(3)          |           | not null | 
 seat_no         | character varying(4)  |           | not null | 
 fare_conditions | character varying(10) |           | not null | 
Indexes:
    "seats_pkey" PRIMARY KEY, btree (aircraft_code, seat_no)
Check constraints:
    "seats_fare_conditions_check" CHECK (fare_conditions::text = ANY (ARRAY['Economy'::character varying::text, 'Comfort'::character varying::text, 'Business'::character varying::text]))
Foreign-key constraints:
    "seats_aircraft_code_fkey" FOREIGN KEY (aircraft_code) REFERENCES aircrafts_data(aircraft_code) ON DELETE CASCADE
```

What do you think is going on there? There are at least three new concepts.

* [Indexes](https://stackoverflow.com/questions/2955459/what-is-an-index-in-sql)
* [Keys](https://www.analyticsvidhya.com/blog/2020/07/difference-between-sql-keys-primary-key-super-key-candidate-key-foreign-key/)
* [Checks](https://www.w3schools.com/sql/sql_check.asp)

What do you think they might do?

Finally, you may notice there are views as well as tables. A [view](https://www.tutorialspoint.com/sql/sql-using-views.htm) is like a saved query.

```sql
demo=# \d
                   List of relations
  Schema  |         Name          |   Type   |  Owner   
----------+-----------------------+----------+----------
 bookings | aircrafts             | view     | postgres
 bookings | aircrafts_data        | table    | postgres
 bookings | airports              | view     | postgres
 bookings | airports_data         | table    | postgres
 bookings | boarding_passes       | table    | postgres
 bookings | bookings              | table    | postgres
 bookings | flights               | table    | postgres
 bookings | flights_flight_id_seq | sequence | postgres
 bookings | flights_v             | view     | postgres
 bookings | routes                | view     | postgres
 bookings | seats                 | table    | postgres
 bookings | ticket_flights        | table    | postgres
 bookings | tickets               | table    | postgres
(13 rows)
```

We can get the result of the query

```psql
demo=# SELECT * FROM airports LIMIT 1;
 airport_code |  airport_name   |  city   |             coordinates              |   timezone   
--------------+-----------------+---------+--------------------------------------+--------------
 YKS          | Yakutsk Airport | Yakutsk | (129.77099609375,62.093299865722656) | Asia/Yakutsk
(1 row)
````

and see the query which gave us that view.

```sql
demo=# \d+ airports
                                                View "bookings.airports"
    Column    |     Type     | Collation | Nullable | Default | Storage  |                 Description                  
--------------+--------------+-----------+----------+---------+----------+----------------------------------------------
 airport_code | character(3) |           |          |         | extended | Airport code
 airport_name | text         |           |          |         | extended | Airport name
 city         | text         |           |          |         | extended | City
 coordinates  | point        |           |          |         | plain    | Airport coordinates (longitude and latitude)
 timezone     | text         |           |          |         | extended | Airport time zone
View definition:
 SELECT ml.airport_code,
    ml.airport_name ->> lang() AS airport_name,
    ml.city ->> lang() AS city,
    ml.coordinates,
    ml.timezone
   FROM airports_data ml;
```

Interesting, huh? If you so inclined, then spend some time looking at the different views and the new topics introduced above.

## Postgresql processes

One last thing, if you would like to see what else is running in postgresql you may want to run

```sql
SELECT pid, age(clock_timestamp(), query_start), usename, query 
FROM pg_stat_activity 
WHERE query != '<IDLE>' AND query NOT ILIKE '%pg_stat_activity%' 
ORDER BY query_start desc;
```