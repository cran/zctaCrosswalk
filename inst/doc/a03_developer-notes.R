## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, warning = FALSE, message = FALSE----------------------------------
library(zctaCrosswalk)
library(dplyr)

## -----------------------------------------------------------------------------
data(zcta_crosswalk)

print(zcta_crosswalk, n = 5)

## -----------------------------------------------------------------------------
data(state_names)

print(state_names, n = 5)

