bridge_condition_recode <- function(nbi_data) {
  #' Recoding Bridge Condition to make it easier to understand at a glance
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Bridge condition in full words
  #' @export
  BRIDGE_CONDITION <- dplyr::recode(nbi_data$BRIDGE_CONDITION,
                                      "G" = "Good",
                                      "F" = "Fair",
                                      "P" = "Poor")

  return(BRIDGE_CONDITION)
}

#Error in recode(nbi_data$BRIDGE_CONDITION, G = "Good", F = "Fair", P = "Poor") :
#could not find function "recode"
