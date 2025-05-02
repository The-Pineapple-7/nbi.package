STRUCTURE_TYPE_043_recode <- function(nbi_data){
  #' Recoding structure kind or material and type of design to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Descriptions of the kind and type of structure in words
  #' @export
  nbi_data$STRUCTURE_KIND_043A <- dplyr::recode(nbi_data$STRUCTURE_KIND_043A,
                                        "1" = "Highway, with or without pedestrian",
                                        "2" = "Railroad",
                                        "3" = "Pedestrian-bicycle",
                                        "4" = "Highway-railroad",
                                        "5" = "Waterway",
                                        "6" = "Highway-waterway",
                                        "7" = "Railroad-waterway",
                                        "8" = "Highway-waterway-railroad",
                                        "9" = "Relief for waterway",
                                        "0" = "Other")
  nbi_data$STRUCTURE_TYPE_043B <- dplyr::recode(nbi_data$STRUCTURE_TYPE_043B,
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
  return(nbi_data)
}
