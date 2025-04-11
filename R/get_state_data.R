get_state_data <- function(state = "Alabama", year = 2024){
  #' This function extracts NBI state data from the FHWA website into the global environment.
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
  #' get_state_data("MD", 2022)
  if(year < 1992 | year > 2024) {
    print("Please enter a valid year (1992 - 2024)")
    return()
  }
  else {
    state_list <- list("AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "MD", "MA", "MI", "MN", "MS", "MO", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY", "GU", "PR", "VI")
    state <- tolower(state) #Lowering cases to minimize errors by typo of incorrect case
    state <- dplyr::recode(state,
                           "alabama" = "AL",
                           "alaska" = "AK",
                           "arizona" = "AZ",
                           "arkansas" = "AR",
                           "california" = "CA",
                           "colorado" = "CO",
                           "connecticut" = "CT",
                           "delaware" = "DE",
                           "district of columbia" = "DC",
                           "d.c." = "DC",
                           "washington, dc" = "DC",
                           "washington dc" = "DC",
                           "washington, d.c." = "DC",
                           "washington d.c." = "DC",
                           "florida" = "FL",
                           "georgia" = "GA",
                           "hawaii" = "HI",
                           "idaho" = "ID",
                           "illinois" = "IL",
                           "indiana" = "IN",
                           "iowa" = "IA",
                           "kansas" = "KS",
                           "kentucky" = "KY",
                           "louisiana" = "LA",
                           "maine" = "ME",
                           "maryland" = "MD",
                           "massachusetts" = "MA",
                           "michigan" = "MI",
                           "minnesota" = "MN",
                           "mississippi" = "MS",
                           "missouri" = "MO",
                           "montana" = "MT",
                           "nebraska" = "NE",
                           "nevada" = "NV",
                           "new hampshire" = "NH",
                           "new jersey" = "NJ",
                           "new mexico" = "NM",
                           "new york" = "NY",
                           "north carolina" = "NC",
                           "n carolina" = "NC",
                           "n. carolina" = "NC",
                           "north dakota" = "ND",
                           "n dakota" = "ND",
                           "n. dakota" = "ND",
                           "ohio" = "OH",
                           "oklahoma" = "OK",
                           "oregon" = "OR",
                           "pennsylvania" = "PA",
                           "rhode island" = "RI",
                           "south carolina" = "SC",
                           "s carolina" = "SC",
                           "s. carolina" = "SC",
                           "south dakota" = "SD",
                           "s dakota" = "SD",
                           "s. dakota" = "SD",
                           "tennessee" = "TN",
                           "texas" = "TX",
                           "utah" = "UT",
                           "vermont" = "VT",
                           "virginia" = "VA",
                           "washington" = "WA",
                           "west virginia" = "WV",
                           "w virginia" = "WV",
                           "w. virginia" = "WV",
                           "wisconsin" = "WI",
                           "wyoming" = "WY",
                           "guam" = "GU",
                           "puerto rico" = "PR",
                           "u.s. virgin islands" = "VI",
                           "us virgin islands" = "VI",
                           "virgin islands" = "VI")
    state <- toupper(state) #Making sure user-input state abbreviations are valid
    if (state %in% state_list) {
      year_2 <- substr(year, 3,4)
      website_link <- paste("https://www.fhwa.dot.gov/bridge/nbi/", year, "/delimited/", state, year_2, ".txt", sep = "")
      suppressWarnings(nbi_data <- readr::read_csv(website_link))
      return (STATE_CODE_001_recode(nbi_data))
    }
    else {
      print("State not availible. (Check spelling or state abbreviation)")
      return()
    }
  }

}
