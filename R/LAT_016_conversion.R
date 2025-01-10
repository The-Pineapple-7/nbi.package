LAT_016_conversion <- function(nbi_data) {
  #' Converting Latitude to decimal format
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Latitude variable in decimal degree format
  #' @export
  LatH <- as.double(substr(nbi_data$LAT_016,1,2))
  LatM <- as.double(substr(nbi_data$LAT_016,3,4))
  LatS <- as.double(substr(nbi_data$LAT_016,5,8))
  nbi_data$LAT_016A <- format(as.double(LatH+(LatM/60)+(LatS/360000)), nsmall = 4)

  return (nbi_data)
}
