STRUCTURE_ON_UND_042_recode <- function(nbi_data){
  #' Recoding the type of service on and under a structure to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return the type of service on and under the structure in words
  #' @export
  nbi_data$SERVICE_ON_042A <- dplyr::recode(nbi_data$SERVICE_ON_042A,
                                            "1" = "Highway",
                                            "2" = "Railroad",
                                            "3" = "Pedestrian-bicycle",
                                            "4" = "Highway-railroad",
                                            "5" = "Highway-pedestrian",
                                            "6" = "Overpass structure at an interchange or second level of a multilevel interchange",
                                            "7" = "Third level (Interchange)",
                                            "8" = "Fourth level (Interchange)",
                                            "9" = "Building or plaza",
                                            "0" = "Other")
  nbi_data$SERVICE_UND_042B <- dplyr::recode(nbi_data$SERVICE_UND_042B,
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
  return(nbi_data)
  }
