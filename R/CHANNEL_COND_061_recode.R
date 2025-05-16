CHANNEL_COND_061_recode <- function(nbi_data){
  #' Recoding the channel and channel protection condition rating to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return the condition of the channel and channel protection in words
  #' @export
  nbi_data$CHANNEL_COND_061 <- dplyr::recode(nbi_data$CHANNEL_COND_061,
                                                  "N" = "Not Applicable",
                                                  "9" = "Excellect Condition",
                                                  "8" = "Very Good Condition",
                                                  "7" = "Good Condition",
                                                  "6" = "Satisfactory Condition",
                                                  "5" = "Fair Condition",
                                                  "4" = "Poor Condition",
                                                  "3" = "Serious Condition",
                                                  "2" = "Critical Condition",
                                                  "1" = "Closed, Repairable",
                                                  "0" = "Closed, Replacement Necessary")
  return(nbi_data)
}
