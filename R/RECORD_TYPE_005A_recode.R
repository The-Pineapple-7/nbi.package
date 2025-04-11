RECORD_TYPE_005A_recode <- function(nbi_data){
  #' Recoding Record type to make it easier to understand without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Routes going over or under the bridge insead of code
  #' @export
  nbi_data$RECORD_TYPE_005A <- dplyr::recode(nbi_data$RECORD_TYPE_005A,
                                             "1" = "Route goes over the structure",
                                             "2" = "Single route goes under the structure",
                                             "A" = "First of multiple routes that goes under the structure",
                                             "B" = "Second of multiple routes that goes under the structure",
                                             "C" = "Third of multiple routes that goes under the structure",
                                             "D" = "Fourth of multiple routes that goes under the structure",
                                             "E" = "Fifth of multiple routes that goes under the structure",
                                             "F" = "Sixth of multiple routes that goes under the structure",
                                             "G" = "Seventh of multiple routes that goes under the structure",
                                             "H" = "Eighth of multiple routes that goes under the structure",
                                             "I" = "Ninth of multiple routes that goes under the structure",
                                             "J" = "Tenth of multiple routes that goes under the structure",
                                             "K" = "Eleventh of multiple routes that goes under the structure",
                                             "L" = "Twelfth of multiple routes that goes under the structure",
                                             "M" = "Thirteenth of multiple routes that goes under the structure",
                                             "N" = "Fourteenth of multiple routes that goes under the structure",
                                             "O" = "Fifteenth of multiple routes that goes under the structure",
                                             "P" = "Sixteenth of multiple routes that goes under the structure",
                                             "Q" = "Seventeenth of multiple routes that goes under the structure",
                                             "R" = "Eighteenth of multiple routes that goes under the structure",
                                             "S" = "Nineteenth of multiple routes that goes under the structure",
                                             "T" = "Twentieth of multiple routes that goes under the structure",
                                             "U" = "Twenty-first of multiple routes that goes under the structure",
                                             "V" = "Twenty-second of multiple routes that goes under the structure",
                                             "W" = "Twenty-third of multiple routes that goes under the structure",
                                             "X" = "Twenty-fourth of multiple routes that goes under the structure",
                                             "Y" = "Twenty-fifth of multiple routes that goes under the structure",
                                             "Z" = "Twenty-sixth of multiple routes that goes under the structure")
  return(nbi_data)
}
