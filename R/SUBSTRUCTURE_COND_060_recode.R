SUBSTRUCTURE_COND_060_recode <- function(nbi_data){
  #' Recoding the substructure condition rating to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return the condition of the substructure in words
  #' @export
  nbi_data$SUBSTRUCTURE_COND_060 <- dplyr::recode(nbi_data$SUBSTRUCTURE_COND_060,
                                          "N" = "Not Applicable",
                                          "9" = "Excellect Condition",
                                          "8" = "Very Good Condition",
                                          "7" = "Good Condition",
                                          "6" = "Satisfactory Condition",
                                          "5" = "Fair Condition",
                                          "4" = "Poor Condition",
                                          "3" = "Serious Condition",
                                          "2" = "Critical Condition",
                                          "1" = "Imminent Failure Condition",
                                          "0" = "Failed Condition")
  return(nbi_data)
}
