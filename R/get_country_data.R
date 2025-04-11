get_country_data <- function(year = 2024, non_highway = "FALSE"){
  #' Extracts NBI country data from the FHWA website into the global environment for use in R.
  #'
  #' @param year The year when the data was collected
  #' @param non_highway Toggle for including non-highway and routes under bridges
  #'
  #' @return nbi csv file downloaded from the nbi website
  #' @export
  #'
  #' @examples
  #' get_country_data(2023, TRUE)
  #' get_country_data()
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
  file_name <- paste(substr(website_link, 37, sum(nchar(website_link) - 3)), "rda", sep = "")
  setwd("data")
  if(!file.exists(file_name)) {
    utils::download.file(website_link, destfile = file_name)
    nbi_data <- readr::read_csv(file_name)
    save(nbi_data, file = file_name)
  }
  load(file = file_name)
  setwd("../")
  return(nbi_data)
}
