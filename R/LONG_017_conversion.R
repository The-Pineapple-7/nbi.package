LONG_017_conversion <- function(nbi_data) {
  #' Converting Longitude to decimal format
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Longitude variable in decimal degree format
  #' @export
  LonH <- as.double(substr(nbi_data$LONG_017,1,3))
  LonM <- as.double(substr(nbi_data$LONG_017,4,5))
  LonS <- as.double(substr(nbi_data$LONG_017,6,9))
  LONG_017A <- format(as.double(LonH+(LonM/60)+(LonS/360000)), nsmall = 4)

  return(LONG_017A)
}
