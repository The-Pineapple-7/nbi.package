OWNER_022_recode <- function(nbi_data) {
  #' Recoding Owner to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Bridge owner in full words
  #' @export
  nbi_data$OWNER_022 <- dplyr::recode(nbi_data$OWNER_022,
                                            "01" = "State Highway Agency",
                                            "02" = "County Highway Agency",
                                            "03" = "Town or Township Highway Agency",
                                            "04" = "City or Municipal Highway Agency",
                                            "11" = "State Park, Forest, or Reservation Agency",
                                            "12" = "Local Park, Forest, or Reservation Agency",
                                            "21" = "Other State Agencies",
                                            "25" = "Other Local Agencies",
                                            "26" = "Private (other than railroad)",
                                            "27" = "Railroad",
                                            "31" = "State Toll Authority",
                                            "32" = "Local Toll Authority",
                                            "60" = "Other Federal Agencies (not listed below)",
                                            "61" = "Indian Tribal Government",
                                            "62" = "Bureau of Indian Affairs",
                                            "63" = "Bureau of Fish and Wildlife",
                                            "64" = "U.S. Forest Service",
                                            "66" = "National Park Service",
                                            "67" = "Tennessee Valley Authority",
                                            "68" = "Bureau of Land Management",
                                            "69" = "Bureau of Reclamation",
                                            "70" = "Corps of Engineers (Civil)",
                                            "71" = "Corps of Engineers (Military)",
                                            "72" = "Air Force",
                                            "73" = "Navy/Marines",
                                            "74" = "Army",
                                            "75" = "NASA",
                                            "76" = "Metropolitan Washington Airports Service",
                                            "80" = "Unknown")
  return(nbi_data)
}
