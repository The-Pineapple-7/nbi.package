
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
#> Downloading GitHub repo The-Pineapple-7/nbi.package@HEAD
#> rlang  (1.1.4   -> 1.1.6  ) [CRAN]
#> cli    (3.6.3   -> 3.6.4  ) [CRAN]
#> pillar (1.9.0   -> 1.10.2 ) [CRAN]
#> cpp11  (0.5.1   -> 0.5.2  ) [CRAN]
#> R6     (2.5.1   -> 2.6.1  ) [CRAN]
#> bit    (4.5.0.1 -> 4.6.0  ) [CRAN]
#> tzdb   (0.4.0   -> 0.5.0  ) [CRAN]
#> bit64  (4.5.2   -> 4.6.0-1) [CRAN]
#> Installing 8 packages: rlang, cli, pillar, cpp11, R6, bit, tzdb, bit64
#> Installing packages into 'C:/Users/samuel-kei.goon/AppData/Local/R/win-library/4.4'
#> (as 'lib' is unspecified)
#> 
#>   There is a binary version available but the source version is later:
#>       binary source needs_compilation
#> rlang  1.1.5  1.1.6              TRUE
#> 
#> package 'cli' successfully unpacked and MD5 sums checked
#> Warning: cannot remove prior installation of package 'cli'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\00LOCK\cli\libs\x64\cli.dll
#> to
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\cli\libs\x64\cli.dll:
#> Permission denied
#> Warning: restored 'cli'
#> package 'pillar' successfully unpacked and MD5 sums checked
#> package 'cpp11' successfully unpacked and MD5 sums checked
#> package 'R6' successfully unpacked and MD5 sums checked
#> package 'bit' successfully unpacked and MD5 sums checked
#> Warning: cannot remove prior installation of package 'bit'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\00LOCK\bit\libs\x64\bit.dll
#> to
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\bit\libs\x64\bit.dll:
#> Permission denied
#> Warning: restored 'bit'
#> package 'tzdb' successfully unpacked and MD5 sums checked
#> Warning: cannot remove prior installation of package 'tzdb'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\00LOCK\tzdb\libs\x64\tzdb.dll
#> to
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\tzdb\libs\x64\tzdb.dll:
#> Permission denied
#> Warning: restored 'tzdb'
#> package 'bit64' successfully unpacked and MD5 sums checked
#> Warning: cannot remove prior installation of package 'bit64'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\00LOCK\bit64\libs\x64\bit64.dll
#> to
#> C:\Users\samuel-kei.goon\AppData\Local\R\win-library\4.4\bit64\libs\x64\bit64.dll:
#> Permission denied
#> Warning: restored 'bit64'
#> 
#> The downloaded binary packages are in
#>  C:\Users\samuel-kei.goon\AppData\Local\Temp\RtmpwthIES\downloaded_packages
#> installing the source package 'rlang'
#> Warning in i.p(...): installation of package 'rlang' had non-zero exit status
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#> * checking for file 'C:\Users\samuel-kei.goon\AppData\Local\Temp\RtmpwthIES\remotes8a5c1f5a597f\The-Pineapple-7-nbi.package-0e56b0c/DESCRIPTION' ... OK
#> * preparing 'nbi.package':
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> * looking to see if a 'data/datalist' file should be added
#>   NB: this package now depends on R (>= 3.5.0)
#>   WARNING: Added dependency on R >= 3.5.0 because serialized objects in
#>   serialize/load version 3 cannot be read in older versions of R.
#>   File(s) containing such objects:
#>     'nbi.package/data/2024hwybronefiledel.rda'
#>     'nbi.package/data/AL_nbi_data_2024.rda'
#>     'nbi.package/data/IA_nbi_data_2024.rda'
#>     'nbi.package/data/MD_nbi_data_2024.rda'
#> * building 'nbi.package_0.0.0.9000.tar.gz'
#> 
#> Installing package into 'C:/Users/samuel-kei.goon/AppData/Local/R/win-library/4.4'
#> (as 'lib' is unspecified)
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
