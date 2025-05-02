DESIGN_LOAD_031_recode <- function(nbi_data, metric = FALSE){
  #' Recoding design load to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #' @param metric Toggle for using metric or english descriptions of the live load the structure was designed for
  #'
  #' @return The live load the structure was designed for
  #' @export
  if(metric == TRUE){
    nbi_data$DESIGN_LOAD_031 <- dplyr::recode(nbi_data$DESIGN_LOAD_031,
                                              "0" = "Unknown",
                                              "1" = "M 9",
                                              "2" = "M 13.5",
                                              "3" = "MS 13.5",
                                              "4" = "M 18",
                                              "5" =	"MS 18",
                                              "6" =	"MS 18 + Mod",
                                              "7" = "Pedestrian",
                                              "8" =	"Railroad",
                                              "9"	= "MS 22.5 or greater",
                                              "A"	= "HL 93",
                                              "B"	= "Greater than HL 93",
                                              "C"	= "Other")
  }
  else{
    nbi_data$DESIGN_LOAD_031 <- dplyr::recode(nbi_data$DESIGN_LOAD_031,
                                              "0" = "Unknown",
                                              "1" = "H 10",
                                              "2" = "H 15",
                                              "3" = "HS 15",
                                              "4" = "H 20",
                                              "5" =	"HS 20",
                                              "6" =	"HS 20 + Mod",
                                              "7" = "Pedestrian",
                                              "8" =	"Railroad",
                                              "9"	= "HS 25 or greater",
                                              "A"	= "HL 93",
                                              "B"	= "Greater than HL 93",
                                              "C"	= "Other")
  }
  return(nbi_data)
}
