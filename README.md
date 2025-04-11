
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nbi.package

<!-- badges: start -->
<!-- badges: end -->

## Overview

‘nbi\_package’ is an R package containing functions to use for the
cleaning and creation of visualizations using the National Bridge
Inventory dataset created by the FHWA.

## Installation

You can install the latest version from GitHub with:

``` r
if(packageVersion("devtools") < "2.4.5") {
  install.packages("devtools")
}
devtools::install_github("The-Pineapple-7/nbi.package")
#> Skipping install of 'nbi.package' from a github remote, the SHA1 (728175f2) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## Usage

-   get\_country\_data, for downloading or reading NBI data of the
    entire United States.
-   get\_state\_data, for downloading NBI data of individual states.
-   LAT\_016\_conversion and LONG\_017\_conversion, for converting
    LAT\_016 and LONG\_017 data into decimal format.
-   STATE\_CODE\_001\_recode, for recoding and renaming
    STATE\_CODE\_001.
-   RECORD\_TYPE\_005A\_recode, for recoding record type
-   ROUTE\_PREFIX\_005B\_recode, for recoding and renaming route prefix.
-   MAINTENANCE\_021\_recode, for recoding maintenance responsibility.
-   OWNER\_022\_recode, for recoding bridge owner.
-   FUNCTIONAL\_CLASS\_026\_recode, for recoding functional
    classification.
-   STRUCTURE\_TYPE\_043, for recoding the structure type.

## Example

This is how you should use get\_country\_data:

``` r
library(nbi.package)
# The default settings are the year 2024, and FALSE for only highways and no non-highways and routes under bridges
nbi_2022 <- get_country_data(2022, FALSE)
#> Warning: One or more parsing issues, call `problems()` on your data frame for details,
#> e.g.:
#>   dat <- vroom(...)
#>   problems(dat)
#> Rows: 620669 Columns: 123
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (52): STATE_CODE_001, STRUCTURE_NUMBER_008, ROUTE_NUMBER_005D, HIGHWAY_D...
#> dbl (69): RECORD_TYPE_005A, ROUTE_PREFIX_005B, SERVICE_LEVEL_005C, DIRECTION...
#> lgl  (2): CRITICAL_FACILITY_006B, TEMP_STRUCTURE_103
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

You can also use a pre-downloaded zip file as long as it is in the
working directory.

This is how you should use get\_state\_data:

``` r
library(nbi.package)
# The default settings are Alabama for the state and the year 2024
nbi_MD_2023 <- get_state_data("MD", 2023)
#> Warning: One or more parsing issues, call `problems()` on your data frame for details,
#> e.g.:
#>   dat <- vroom(...)
#>   problems(dat)
#> Rows: 5473 Columns: 123
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (48): STRUCTURE_NUMBER_008, ROUTE_NUMBER_005D, HIGHWAY_DISTRICT_002, COU...
#> dbl (73): STATE_CODE_001, RECORD_TYPE_005A, ROUTE_PREFIX_005B, SERVICE_LEVEL...
#> lgl  (2): CRITICAL_FACILITY_006B, TEMP_STRUCTURE_103
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
# You can also use State names
nbi_IA_2024 <- get_state_data("Iowa")
#> Warning: One or more parsing issues, call `problems()` on your data frame for details,
#> e.g.:
#>   dat <- vroom(...)
#>   problems(dat)
#> Rows: 23719 Columns: 123
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (50): STRUCTURE_NUMBER_008, ROUTE_NUMBER_005D, HIGHWAY_DISTRICT_002, COU...
#> dbl (70): STATE_CODE_001, RECORD_TYPE_005A, ROUTE_PREFIX_005B, SERVICE_LEVEL...
#> lgl  (3): CRITICAL_FACILITY_006B, SUBROUTE_NO_013B, TEMP_STRUCTURE_103
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```
