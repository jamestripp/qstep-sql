install.packages('tidyverse')

require(tidyverse)

wdi_data <-
    read_csv('1_Preparation/Data sets/world_development_indicators/data.csv') %>%
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
        countryCode,
        electricity = `Access to electricity (% of population)`,
        forest_area = `Forest area (% of land area)`,
        gross_domentic_savings = `Gross domestic savings (% of GDP)`,
        labor = `Labor force, total`,
        area = `Land area (sq. km)`
    ) %>%
    mutate_if(is.character, list( ~ na_if(., ".."))) %>%
    write_csv('1_Preparation/Data sets/world_development_indicators/wide_data.csv')
