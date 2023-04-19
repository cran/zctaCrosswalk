## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(zctaCrosswalk)

## -----------------------------------------------------------------------------
# Not case sensitive when using state names
head(
  get_zctas_by_state("California")
)

# USPS state abbreviations are also OK - but these *are* case sensitive
head(
  get_zctas_by_state("CA")
)

# Multiple states at the same time are also OK
head(
  get_zctas_by_state(c("CA", "NY"))
)

# Throws an error - you can't mix types in a single request
# get_zctas_by_state(c("California", "NY"))

## -----------------------------------------------------------------------------
ca1 = get_zctas_by_state("CA")
ca2 = get_zctas_by_state("06")
ca3 = get_zctas_by_state(6)
all(ca1 == ca2)
all(ca2 == ca3)

## -----------------------------------------------------------------------------
# "06075" is San Francisco County, California
head(
  get_zctas_by_county("06075")
)

# 6075 (== as.numeric("06075")) works too
head(
  get_zctas_by_county(6075)
)

# Multiple counties at the same time are also OK
head(
  get_zctas_by_county(c("06075", "36059"))
)

## -----------------------------------------------------------------------------
get_zcta_metadata("90210")

# Some ZCTAs span multiple counties
get_zcta_metadata(39573)

