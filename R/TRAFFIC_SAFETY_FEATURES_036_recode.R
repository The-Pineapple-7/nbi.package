TRAFFIC_SAFETY_FEATURES_036_recode <- function(nbi_data){
  #' Recoding traffic safety feeatures to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Status of traffic safety features in a short sentence
  #' @export
  nbi_data$RAILINGS_036A <- dplyr::recode(nbi_data$RAILINGS_036A,
                                          "0" = "Does not meet current standards.",
                                          "1" = "Meets current standards.",
                                          "N" = "Not applicable or a safety feature is not required.")
  nbi_data$TRANSITIONS_036B <- dplyr::recode(nbi_data$TRANSITIONS_036B,
                                          "0" = "Does not meet current standards.",
                                          "1" = "Meets current standards.",
                                          "N" = "Not applicable or a safety feature is not required.")
  nbi_data$APPR_RAIL_036C <- dplyr::recode(nbi_data$APPR_RAIL_036C,
                                          "0" = "Does not meet current standards.",
                                          "1" = "Meets current standards.",
                                          "N" = "Not applicable or a safety feature is not required.")
  nbi_data$APPR_RAIL_END_036D <- dplyr::recode(nbi_data$APPR_RAIL_END_036D,
                                          "0" = "Does not meet current standards.",
                                          "1" = "Meets current standards.",
                                          "N" = "Not applicable or a safety feature is not required.")
  return(nbi_data)
}
