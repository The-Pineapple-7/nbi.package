STRUCTURAL_EVAL_067_recode <- function(nbi_data){
  #' Recoding the deck condition rating to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return the condition of the deck in words
  #' @export
  nbi_data$STRUCTURAL_EVAL_067 <- dplyr::recode(nbi_data$STRUCTURAL_EVAL_067,
                                          "N" = "Not Applicable",
                                          "9" = "Superior to present desirable criteria",
                                          "8" = "Equal to present desirable criteria",
                                          "7" = "Better than present minimum criteria",
                                          "6" = "Equal to present minimum criteria",
                                          "5" = "Somewhat better than minimum adequacy to tolerate being left in place as is",
                                          "4" = "Meets minimum tolerable limits to be left in place as is",
                                          "3" = "Basically intolerable requiring high priority of corrective action",
                                          "2" = "Basically intolerable requiring high priority of replacement",
                                          "0" = "Bridge closed")
  return(nbi_data)
}
