FUNCTIONAL_CLASS_026_recode <- function(nbi_data) {
  #' Recoding Functional Classification to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return The Funcional Classification of the inventory road in full words
  #' @export
  nbi_data$FUNCTIONAL_CLASS_026 <- dplyr::recode(nbi_data$FUNCTIONAL_CLASS_026,
                                                 "01" = "Rural Principal Arterial - Interstate",
                                                 "02" = "Rural Principal Arterial - Other",
                                                 "06" = "Rural Minor Arterial",
                                                 "07" = "Rural Major Collector",
                                                 "08" = "Rural Minor Collector",
                                                 "09" = "Rural Local",
                                                 "11" = "Urban Principal Arterial - Interstate",
                                                 "12" = "Urban Principal Arterial - Other Freeways or Expressways",
                                                 "14" = "Urban Other Principal Arterial",
                                                 "16" = "Urban Minor Arterial",
                                                 "17" = "Urban Collector",
                                                 "19" = "Urban Local")
  return(nbi_data)
}
