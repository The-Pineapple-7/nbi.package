Introduction to nbi
================

NBI, or National Bridge Inventory, is a large collection of information
obtained by the US government about bridges across the country. Examples
of the type of information contained within this dataset are:

-   Bridge location information
-   Owner of and whoever is responsible for maintaining the bridge
-   The type, size, and specific quality about the bridge
-   Maintenance status of the bridge

## How to import data

The functions `get_state_data` and `get_country_data` both import data
directly from the download page at
<https://www.fhwa.dot.gov/bridge/nbi/ascii.cfm>.

These functions share an input value, “year”, which changes which year
the information being imported was collected. `get_state_data` has a
seperate input value called “state” which limits what information will
be imported to whatever US state specified, this can either be the state
initials (AL, MD) or the state name (Idaho). `get_country_data` has an
input value called “non\_highway” which includes information about
non-highway and routes under bridges, the default is FALSE; to include
this information, change the value to TRUE.

To use these functions, you have to create an empty value to pipe the
information into, in the following examples, the value is nbi\_data.

``` r
# nbi_data is the empty value being filled
# The state being read is "MD" or Maryland, and the year being read is 2023
nbi_data <- get_state_data(state = "MD", year = 2023)
#> [1] -- Reading rda file to input into global function --
```

It should be noted there are default values added to get\_state\_data
when either of the values are unchanged, the default state for
`get_state_data` is “Alabama” and the default year is 2024

``` r
# The year being read is 2022, and the non-highway bridges are not being included
nbi_data <- get_country_data(year = 2022, non_highway = FALSE)
#> [1] -- Reading rda file to input into global function --
```

The default year of `get_country_data` is 2024, and the default value
for non\_highway is FALSE

## How to convert data

The majority of the functions listed in this package change the values
of specific columns to a different data type. Most of the values are
coded using a coding guide on the FHWA website. The functins uncode
these data points by taking the numbers listed and using the coding
system to turn them into words instead of numbers. In order to use
these, you need to supply the function with the dataset you want to
change, then pipe the information into a value, which could be a
different or the same value.

LatLong\_conversion is a very useful function that recodes the latitude
and longitude values into the decimal degrees format. Many visualization
programs like Socrata can use latitude and longitude in decimal format
to create a map of data points.

``` r
# Creating nbi_data to save the get_state_data information into the global environment
nbi_data <- get_state_data()
#> [1] -- Reading rda file to input into global function --
# This converts the information from the value nbi_data into the value nbi_converted_data
nbi_converted_data <- LatLong_conversion(nbi_data)
#> Warning in LatLong_conversion(nbi_data): NAs introduced by coercion
nbi_converted_data %>% select(LAT_016:LONG_017) %>% slice_head(n = 10)
#> # A tibble: 10 × 2
#>    LAT_016 LONG_017  
#>    <chr>   <chr>     
#>  1 31.4039 " 87.9411"
#>  2 31.6611 " 87.8139"
#>  3 33.4861 " 86.0219"
#>  4 34.6167 " 88.8278"
#>  5 36.2444 " 88.8667"
#>  6 35.4667 " 88.7278"
#>  7 34.7417 " 87.7750"
#>  8 33.9972 " 88.3111"
#>  9 35.0222 " 87.2000"
#> 10 35.1392 " 88.7828"
```
