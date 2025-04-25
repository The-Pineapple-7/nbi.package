LatLong_conversion <- function(nbi_data) {
  #' Converting latitude and longitude to decimal format
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Latitude and longitude variables in decimal degree format
  #' @export
  LatH <- as.double(substr(nbi_data$LAT_016,1,2))
  LatM <- as.double(substr(nbi_data$LAT_016,3,4))
  LatS <- as.double(substr(nbi_data$LAT_016,5,8))
  nbi_data$LAT_016 <- format(as.double(LatH+(LatM/60)+(LatS/3600)), digits = 6, scientific = 3)

  LonH <- as.double(substr(nbi_data$LONG_017,1,3))
  LonM <- as.double(substr(nbi_data$LONG_017,4,5))
  LonS <- as.double(substr(nbi_data$LONG_017,6,9))
  nbi_data$LONG_017 <- format(as.double(LonH+(LonM/60)+(LonS/3600)), digits = 3, scientific = 3)

  return (nbi_data)
}
