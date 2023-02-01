# Out of SQL

People often use databases to extract data. The data is then used for various purposes including analysis and visualisation.

In this section you will:

* Extract your data from the Database using the R language
* Visualise trends in your data via statistical analysis and visualisations, including choropleths

As an analyst, you've been asked to examine relationships between the various world indicator variables.

## R

R is a statistical programming language. Please download [R](https://cloud.r-project.org/) and [RStudio](https://rstudio.com/products/rstudio/) if you have not already.

Consider the following

```r
my_variable <- exp(4)
```

which created a variable called my_variable which contains the exponent of 4.

One can also create plots

```r
plot(c(1,2,3), c(3,5,7))
```

which plots the values 1, 2 and 3 against the values 3, 4, 5. We can specify which argument is which

```r
plot(x = c(1,2,3), y = c(3,5,7))
```

which tells R which values should be plotted on the x axis and which on the y axis.

Furthermore, we can follow convention and make this code more readable.

```r
plot(
    x = c(1,2,3),
    y = c(3,5,7)
)
```

Anyway, this is not an R course. We are just going to use R to connect to our database, extract and then process data.

## RPostgreSQL

R has a nice library for connecting to PostgreSQL called RPostgresql. To install, in RStudio run

```r
install.packages(DBI)
install.packages(RPostgreSQL)
```

To connect to a database is pretty straightforward.


```r
library(DBI)
library(RPostgreSQL) 

drv <- dbDriver("PostgreSQL")

con <- dbConnect(
  drv,
  dbname="qstep",
  host="127.0.0.1",
  port=5432,
  user="qstep",
  password="qstep"
  )
```

Running queries can be done like so

```r
my_result <-
    dbGetQuery(
        con, 
        'SELECT * 
        FROM world_indicators LIMIT 10;'
    )
```

Which gets the first 10 rows of the world_indicators table.

**Note** Please do not download any data from the world_borders table yet. The geospatial data may crash RStudio - we will deal with this a little later.

### Your Turn

In small groups or on you own:

1. Connect to the qstep database using R
2. Extract all the the world_indicator data as detailed above into R

## Visualising

We are going to use a package called ggplot2. To install this run

```r
install.packages('ggplot2')
```

The my_result variable is a data frame (a table containing data). The following will fit a simple linear model using two columns of data and plot the result

```r
require(ggplot2)

ggplot(my_result, aes(x = labor, y = forest_area)) +
  geom_point() +
  stat_summary(fun.data = mean_cl_normal) + 
  geom_smooth(method = 'lm', formula = y~x)
```

#### Your Turn

Run the above plot command with your chosen variables instead of labor_force and land_area. What sort of relationship do you see? For example, is there a relationship between gdp and land area? Can you guess why?

### Geospatial

Our world_borders table (and joined custom table) contain geospatial information. R has a package called sf which allows us to visualise the data in simple choropleths.

```r
install.packages('sf')
```

We pass the st_read function our connection and the name of the table with geospatial information. We can also specify a query too.

```r
require(sf)
world_borders <- st_read(con, 'qstep')
```

and you specify data from an SQL query too.

```r
mydata_low_labor <- st_read(
    con,
    query = "SELECT * FROM qstep WHERE area_classification = 'low area';"
)
```

Nice choropleths can be created from the returned data

```r
plot(world_borders[,c("pop2005", "geom")])
```

#### Your Turn

Create choropleths of the two variables you are investigating. Do you see any sptial pattern? Why might a spatial pattern be important?

## Summary

Congratulations, you've made it all the way through! We've done a lot:

* Logging into and setting up a database
* Querying data with SQL
* Carrying out summary statistics and grouping variables within SQL
* Exporting data from a database and carrying out simple analysis

These are a small subset of the functionality of databases and the R language.

Recomendations for going further are on the front page. Like all technical skills, there's lots to learn and practice will improve your skills. If you have any questions or would like to discuss the concepts you've covered then do email me at [James.Tripp@warwick.ac.uk]('mailto:james.tripp@warwick.ac.uk').

I hope you had fun and very best of luck for your future interactions with SQL and data based activities.

-James