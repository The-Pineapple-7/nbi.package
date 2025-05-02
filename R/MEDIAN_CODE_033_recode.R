MEDIAN_CODE_033_recode <- function(nbi_data){
  #' Recoding median code to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Median status of the bridge
  #' @export
  nbi_data$MEDIAN_CODE_033 <- dplyr::recode(nbi_data$MEDIAN_CODE_033,
                                            "0" = "No median",
                                            "1" = "Open median",
                                            "2" = "Closed median (No barrier)",
                                            "3" = "Closed median with non-mountable barriers")
  return(nbi_data)
}
