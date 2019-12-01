install.packages('tidyverse')

require(tidyverse)

read_csv('1_preparation/datasets/world_development_indicators/data.csv') %>%
    select(
        -`Series Code`,
        country = `Country Name`,
        countryCode = `Country Code`,
        Series = `Series Name`,
        Value = `2005 [YR2005]`
    ) %>%
    pivot_wider(names_from = Series, values_from = Value) %>%
    select(
        country,
        country_code = countryCode,
        electricity = `Access to electricity (% of population)`,
        forest_area = `Forest area (% of land area)`,
        land_area = `Land area (sq. km)`,
        gross_domentic_savings = `Gross domestic savings (% of GDP)`,
        labor_force = `Labor force, total`,
        trade = `Trade (% of GDP)`,
        gdp = `GDP (current US$)`,
        population_growth = `Population growth (annual %)`,
        population = `Population, total`,
        internet_use = `Individuals using the Internet (% of population)`
    ) %>%
    mutate_if(is.character, list( ~ na_if(., ".."))) %>%
    write_csv('1_preparation/datasets/world_development_indicators/wide_data.csv')