HISTORY_037_recode <- function(nbi_data){
  #' Recoding historical significance code to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return The historical significance of the structure in a short sentence
  #' @export
  nbi_data$HISTORY_037 <- dplyr::recode(nbi_data$HISTORY_037,
                                        "1" = "On the National Register of Historic Places.",
                                        "2" = "Eligible for the National Register of Historic Places.",
                                        "3" = "Possibly eligible for the National Register of Historic Places or is on a State or local historic register.",
                                        "4" = "Historical significance is not determinable at this  time.",
                                        "5" = "Not eligible for the National Register of Historic Places.")
  return(nbi_data)
}
