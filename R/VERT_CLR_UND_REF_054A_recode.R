VERT_CLR_UND_REF_054A_recode <- function(nbi_data){
  #' Recoding reference feature of minimum vertical underclearance to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return the feature being referenced in the minimum vertical underclearance in words
  #' @export
  nbi_data$VERT_CLR_UND_REF_054A <- dplyr::recode(nbi_data$VERT_CLR_UND_REF_054A,
                                            "H" = "Highway beneath structure",
                                            "R" = "Railroad beneath structure",
                                            "N" = "Feature not a highway or railroad")
  return(nbi_data)
}
