NAVIGATION_038_recode <- function(nbi_data){
  #' Recoding navigation control status to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Status of navigation control on waterway in a short sentence
  #' @export
  nbi_data$NAVIGATION_038 <- dplyr::recode(nbi_data$NAVIGATION_038,
                                           "0" = "No navigation control on waterway.",
                                           "1" = "Navigation control on waterway.",
                                           "N" = "Not applicable, no waterway.")
  return(nbi_data)
}
