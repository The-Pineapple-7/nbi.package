STRUCTURE_FLARED_035_recode <- function(nbi_data){
  #' Recoding indicator of if sturcture is flared to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Indicator of whether structure is flared in full words
  #' @export
  nbi_data$STRUCTURE_FLARED_035 <- dplyr::recode(nbi_data$STRUCTURE_FLARED_035,
                                                 "0" = "No flare",
                                                 "1" = "Yes, flared")
  return(nbi_data)
}
