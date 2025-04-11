ROUTE_PREFIX_005B_recode <- function(nbi_data){
  #' Recoding and renaming Route Prefix to make it easier to understand without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return State names insead of code
  #' @export
  nbi_data$ROUTE_PREFIX_005B <- dplyr::recode(nbi_data$ROUTE_PREFIX_005B,
                                             "1" = "Interstate Highway",
                                             "2" = "U.S. Numbered Highway",
                                             "3" = "State Highway",
                                             "4" = "County Highway",
                                             "5" = "City Street",
                                             "6" = "Federal lands road",
                                             "7" = "State lands road",
                                             "8" = "Other")
  suppressWarnings(nbi_data <- dplyr::rename(nbi_data, "ROUTE_TYPE_005B" = "ROUTE_PREFIX_005B")) #Changing the name to fit the information being presented
  return(nbi_data)
}
