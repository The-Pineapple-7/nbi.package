get_country_data <- function(year = 2024, non_highway = "FALSE"){
  #' This function extracts NBI country data from the FHWA website into the global environment for use in R.
  #'
  #' @param year The year when the data was collected
  #' @param non_highway Toggle for including non-highway and routes under bridges
  #'
  #' @return nbi csv file downloaded from the nbi website
  #' @export
  if(year < 1992 | year > 2024) {
    print("Please enter a valid year (1992 - 2024)")
    return()
  }
  else if(non_highway == TRUE) {
   if(year >= 2013) {
     website_link <- paste("https://www.fhwa.dot.gov/bridge/nbi/", year, "allstatesallrecsdel.zip", sep = "")
   }
   else {
     print("Non-highway data not availible for this year (2013-2024 only)")
     return()
   }
  }
  else {
    if(year <= 2017) {
      website_link <- paste("https://www.fhwa.dot.gov/bridge/nbi/", year, "hwybronlyonefile.zip", sep = "")
    }
    else {
      website_link <- paste("https://www.fhwa.dot.gov/bridge/nbi/", year, "hwybronefiledel.zip", sep = "")
    }
  }
  file_name <-substr(website_link, 37, nchar(website_link))
  if(file.exists(file_name)) {
    suppressWarnings(nbi_data <- readr::read_csv(file_name))
  }
  else {
    suppressWarnings(utils::download.file(website_link, destfile = "nbi_data.zip"))
    suppressWarnings(nbi_data <- readr::read_csv("nbi_data.zip"))
    file.remove("nbi_data.zip")
  }

  return(nbi_data)
}
