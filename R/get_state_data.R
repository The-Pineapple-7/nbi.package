get_state_data <- function(state = "Alabama", year = 2024){
  #' Extracting NBI state data into the global environment
  #'
  #'
  #' @param state The state where the data was collected
  #' @param year The year when the data was collected
  #'
  #' @return nbi csv file downloaded from the nbi website
  #' @export
  #'
  #' @examples
  #' state <- "Maryland"
  #' get_data("MD", 2022)
  if(year < 1992 | year > 2024) {
    print("Please enter a valid year (1992 - 2024)")
    return()
  }
  else {
    state_list <- list("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "MD", "MA", "MI", "MN", "MS", "MO", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY", "GU", "PR", "VI")
    state <- dplyr::recode(state,
                           "Alabama" = "AL",
                           "Alaska" = "AK",
                           "Arizona" = "AZ",
                           "Arkansas" = "AR",
                           "California" = "CA",
                           "Colorado" = "CO",
                           "Connecticut" = "CT",
                           "Delaware" = "DE",
                           "District of Columbia" = "DC",
                           "Florida" = "FL",
                           "Georgia" = "GA",
                           "Hawaii" = "HI",
                           "Idaho" = "ID",
                           "Illinois" = "IL",
                           "Indiana" = "IN",
                           "Iowa" = "IA",
                           "Kansas" = "KS",
                           "Kentucky" = "KY",
                           "Louisiana" = "LA",
                           "Maine" = "ME",
                           "Maryland" = "MD",
                           "Massachusetts" = "MA",
                           "Michigan" = "MI",
                           "Minnesota" = "MN",
                           "Mississippi" = "MS",
                           "Missouri" = "MO",
                           "Montana" = "MT",
                           "Nebraska" = "NE",
                           "Nevada" = "NV",
                           "New Hampshire" = "NH",
                           "New Jersey" = "NJ",
                           "New Mexico" = "NM",
                           "New York" = "NY",
                           "North Carolina" = "NC",
                           "North Dakota" = "ND",
                           "Ohio" = "OH",
                           "Oklahoma" = "OK",
                           "Oregon" = "OR",
                           "Pennsylvania" = "PA",
                           "Rhode Island" = "RI",
                           "South Carolina" = "SC",
                           "South Dakota" = "SD",
                           "Tennessee" = "TN",
                           "Texas" = "TX",
                           "Utah" = "UT",
                           "Vermont" = "VT",
                           "Virginia" = "VA",
                           "Washington" = "WA",
                           "West Virginia" = "WV",
                           "Wisconsin" = "WI",
                           "Wyoming" = "WY",
                           "Guam" = "GU",
                           "Puerto Rico" = "PR",
                           "U.S. Virgin Islands" = "VI",
                           "US Virgin Islands" = "VI",
                           "Virgin Islands" = "VI")
    if (state %in% state_list) {
      year_2 <- substr(year, 3,4)
      website_link <- paste("https://www.fhwa.dot.gov/bridge/nbi/", year, "/delimited/", state, year_2, ".txt", sep = "")
      nbi_data <- readr::read_csv(website_link)
      return(nbi_data)
    }
    else {
      print("State not availible. (Check spelling or state abbreviation)")
      return()
    }
  }

}
