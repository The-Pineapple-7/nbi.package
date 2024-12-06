get_data <- function(website_link){
  nbi_data <- read_csv(website_link)


  #Recoding Maintenance to make it understandable without the coding guide
  nbi_data$MAINTENANCE_021 <- recode(nbi_data$MAINTENANCE_021,
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

  #Recoding Structure type to make it understandable without the coding guide
  nbi_data$STRUCTURE_TYPE_043B <- recode(nbi_data$STRUCTURE_TYPE_043B,
                                         "01" = "Slab",
                                         "02" = "Stringer/Multi-beam or Girder",
                                         "03" = "Girder and Floorbeam System",
                                         "04" = "Tee Beam",
                                         "05" = "Box Beam or Girders - Multiple",
                                         "06" = "Box Beam or Girders - Single or Spread",
                                         "07" = "Frame (except frame culverts)",
                                         "08" = "Orthotropic",
                                         "09" = "Truss - Deck",
                                         "10" = "Truss - Thru",
                                         "11" = "Arch - Deck",
                                         "12" = "Arch - Thru",
                                         "13" = "Suspension",
                                         "14" = "Stayed Girder",
                                         "15" = "Movable - Lift",
                                         "16" = "Movable - Bascule",
                                         "17" = "Movable - Swing",
                                         "18" = "Tunnel",
                                         "19" = "Culvert (includes frame culverts)",
                                         "20" = "* Mixed types",
                                         "21" = "Segmental Box Girder",
                                         "22" = "Channel Beam",
                                         "00" = "Other")

  glimpse(nbi_data)

  return(nbi_data)
}
