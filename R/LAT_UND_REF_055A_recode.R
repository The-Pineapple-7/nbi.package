LAT_UND_REF_055A_recode <- function(nbi_data){
  #' Recoding reference feature of minimum lateral underclearance to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return the feature being referenced in the minimum lateral underclearance in words
  #' @export
  nbi_data$LAT_UND_REF_055A <- dplyr::recode(nbi_data$LAT_UND_REF_055A,
                                            "H" = "Highway beneath structure",
                                            "R" = "Railroad beneath structure",
                                            "N" = "Feature not a highway or railroad")
  return(nbi_data)
}
