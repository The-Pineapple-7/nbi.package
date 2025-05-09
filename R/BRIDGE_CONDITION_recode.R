BRIDGE_CONDITION_recode <- function(nbi_data) {
  #' Recoding Bridge Condition to make it easier to understand at a glance
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return Bridge condition in full words
  #' @export
  nbi_data$BRIDGE_CONDITION <- dplyr::recode(nbi_data$BRIDGE_CONDITION,
                                      "G" = "Good",
                                      "F" = "Fair",
                                      "P" = "Poor")

  return(nbi_data)
}
