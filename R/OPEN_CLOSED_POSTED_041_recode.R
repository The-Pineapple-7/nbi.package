OPEN_CLOSED_POSTED_041_recode <- function(nbi_data){
  #' Recoding operational status to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Operational status of a structure in a short sentence
  #' @export
  nbi_data$OPEN_CLOSED_POSTED_041 <- dplyr::recode(nbi_data$OPEN_CLOSED_POSTED_041,
                                                "A" = "Open, no restriction",
                                                "B" = "Open, posting recommended but not legally implemented",
                                                "D" = "Open, temporary shoring",
                                                "E" = "Open, temporary structure in place",
                                                "G" = "New structure not yet open to traffic",
                                                "K" = "Bridge closed to all traffic",
                                                "P" = "Posted for load",
                                                "R" = "Posted for other load-capacity restriction")
  return(nbi_data)
}
