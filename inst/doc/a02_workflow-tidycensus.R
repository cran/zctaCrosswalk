## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, warning = FALSE, message = FALSE----------------------------------
library(zctaCrosswalk)
library(tidycensus)
library(dplyr)

## -----------------------------------------------------------------------------
zcta_income = get_acs(
  geography = "zcta",
  variables = "B19013_001",
  year      = 2021)

head(zcta_income)

## -----------------------------------------------------------------------------
nrow(zcta_income) 

sf_zcta_income = zcta_income |>
  dplyr::filter(GEOID %in% get_zctas_by_county("06075"))

nrow(sf_zcta_income)
head(sf_zcta_income)

## ----eval = FALSE-------------------------------------------------------------
#  library(zctaCrosswalk)
#  library(tidycensus)
#  library(dplyr)
#  library(mapview)
#  
#  all_zctas = get_acs(
#    geography = "zcta",
#    variables = "B19013_001",
#    year      = 2021,
#    geometry  = TRUE)
#  
#  filtered_zctas = filter(all_zctas, GEOID %in% get_zctas_by_county(6075))
#  
#  mapview(filtered_zctas, zcol = "estimate")

