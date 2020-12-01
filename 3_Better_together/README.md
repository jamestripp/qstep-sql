# Better together

You will:

* Learn how to use the SUM, ROUND, AVG, COUNT, MIN and MAX
* Be able to add columns, set conditional values and group data
* Have an understanding of the basic statistical functions within PostgreSQL
* Join two tables together

## Functions

We can use several functions to aggregate the data: SUM, COUNT, AVG, MIN, MAX.

The structure for these commands is

```sql
SELECT function_name(column_name) FROM table_name;
```

where function_name is an aggregate function.

Furthermore, we can round values.

```sql
SELECT ROUND(function_name(column_name)::numeric,2) FROM table_name;
```

### Your Turn

1. What is the average of the labor force column?
2. How many countries are there with a labor force greater than 10000?
3. What is the average of the labor force column rounded to 3 decimal places?

## Group by

The above give us a single value. But we may be interested in the labor of countries with a high area. How can we do this?

Add a column

```sql
ALTER TABLE world_indicators
ADD COLUMN area_classification varchar(30);
```

set the value of the column to 'high area' when area is greater than the average.

Get the average area.

```sql
SELECT AVG(area) FROM world_indicators;
```

Set the high area values.

```sql
UPDATE world_indicators 
SET area_classification = 'high area'
WHERE area > 5001559;
```

Set the low area values

```sql
UPDATE world_indicators 
SET area_classification = 'low area'
WHERE area <= 5001559;
```

What did the above do?

We can then look at the aggregate statistics for low and high area countries.

```sql
SELECT area_classification, round(AVG(labor)::numeric,2) AS average_labor
FROM world_indicators
GROUP BY area_classification;
```

Hmm, can anyone tell me what the AS keyword just did?

### Your Turn

1. Create your own copy of the world_indicators table called yourname_world_indicators where yourname is your own name. If table exists then run DROP TABLE yourname_world_indicators; first.
2. Create a new column in your new table called above_avg_electricity.
3. Set the value in that column to 'yes' if the value of electricity is above average and 'no' if it is not.
4. Print out the country name and the gross_domestic_savings columns where the amount of electricity is above average.

## Aggregate statistical functions

PostgreSQL supports some basic statistical functions (see [here](https://www.postgresql.org/docs/9.5/functions-aggregate.html)). Functions you might be familiar with are correlation and those related to a least squares linear model.

If we want to look at the relationship between labor and area.

```sql
SELECT round(CORR(labor, area)::numeric,2)
FROM world_indicators;
```

And how about if we split the data into low and high area?

```sql
SELECT 
    area_classification, 
    round(CORR(labor, area)::numeric,2) AS corr_coeff
FROM world_indicators
GROUP BY area_classification;
```

We can even get the slope and intercepts from linear models for each group.

```sql
SELECT 
    area_classification, 
    round(CORR(labor, area)::numeric,2) AS corr_coeff, 
    round(regr_intercept(labor, area)::numeric,2) AS intercept, 
    round(regr_slope(labor, area)::numeric,2) AS slope
FROM world_indicators
GROUP BY area_classification;
```

### Your Turn

1. Find out if there is a relationship between electricity and land_area.
2. What are the advantages and disadvantages of doing statistical analysis via SQL?

#### Solutions

##### 1

A simple correlation may work. 

```sql
SELECT CORR(electricity, area)
FROM world_indicators;
```

It looks unlikely there is a relationship - the coefficient is 0.013.

##### 2

We cannot plot the data in SQL. This makes it difficult to investigate the relationship. In particular, linear models and correlations have assumptions we cannot test. Also you may want to check what type of correlation SQL is running.

## Joins

There is a problem with our data set. Can anyone guess what it is?

We want a dataset which contains information about contries. However, what do you see?

```sql
SELECT country, countrycode
FROM world_indicators
WHERE area > 6000000;
```

We do have another dataset

```sql
SELECT iso3, name
FROM world_borders
LIMIT 5;
```

Are you thinking what I'm thinking?

The JOIN keyword joins together two tables by matching a column in each table.  To keep things simple we are going to consider the INNER JOIN. Join statements look like this

```sql
SELECT * FROM left_table
INNER JOIN right_table
ON left_table.column_name = right_table.column_name;
```

Our two tables have a column in common. Which common is this and how should we join our tables to resolve our issue?

There are other types of join. If you want to investigate those then two very useful tutorials are [here](http://www.postgresqltutorial.com/postgresql-joins/) and [here](https://www.tutorialspoint.com/postgresql/postgresql_using_joins.htm).

Both tables have a data column. If you try and join the tables then Postgres will complain. A simple way to fix this is to drop the column entirely. You all share databases, so I suggest you try to delte the column using the following query. If you hit an error then that probably because someone else has already carried out the operation.

```sql
ALTER TABLE world_indicators
DROP COLUMN area;
```

### Your Turn

Run an inner join that solves out data issue. Create a new table which contains the countries and variables. Call this table yourname_data.

How might you verify this solves our issue?

You will use this table in the next section.

#### Solution

```sql
CREATE TABLE jamestripp_data AS 
SELECT * FROM world_indicators
INNER JOIN world_borders
ON world_indicators.countrycode = world_borders.iso3;
```

You could check by just printing out the country names and running through them.

```sql
SELECT country FROM jamestripp_data;
```
