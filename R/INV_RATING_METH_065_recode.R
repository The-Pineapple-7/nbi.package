INV_RATING_METH_065_recode <- function(nbi_data){
  #' Recoding the method used to determine inventory rating to make it understandable without the coding guide
  #'
  #' @param nbi_data A csv file using the NBI coding system and format
  #'
  #' @return the load rating method used to determine inventory rating in words
  #' @export
  nbi_data$INV_RATING_METH_065 <- dplyr::recode(nbi_data$INV_RATING_METH_065,
                                                "0" = "Field evaluation and documented engineering judgment",
                                                "1" = "Load factor (LF) reported in metric tons using MS18 loading",
                                                "2" = "Allowable Stress (AS) reported in metric tons using MS18 loading",
                                                "3" = "Load and Resistance Factor Rating (LRFR) reported in metric tons using MS18 loading",
                                                "4" = "Load testing reported in metric tons using equivalent MS18 loading.",
                                                "5" = "No rating analysis or evaluation performed",
                                                "6" = "Load Factor (LF) rating reported by rating factor (RF) method using MS18 loading (Metric Tons)",
                                                "7" = "Allowable Stress (AS) rating reported by rating factor (RF) method using MS18 loading (Metric Tons)",
                                                "8" = "Load and Resistance Factor Rating (LRFR) rating reported by rating factor (RF) method using HL-93 loadings",
                                                "A" = "Assigned rating based on Load Factor Design (LFD) reported in metric tons",
                                                "B" = "Assigned ratings based on Allowable Stress Design (ASD) reported in metric tons",
                                                "C" = "Assigned ratings based on Load and Resistance Factor Design (LRFD) reported in metric tons",
                                                "D" = "Assigned rating based on Load Factor Design (LFD) reported by rating factor (RF) using MS18 loading",
                                                "E" = "Assigned ratings based on Allowable Stress Design (ASD) reported by rating factor (RF) using MS18 loadings",
                                                "F" = "Assigned ratings based on Load and Resistance Factor Design (LRFD) reported by rating factor (RF) using HL93 loadings",
                                                .missing = "No rating analysis or evaluation performed",
                                                .default = "No rating analysis or evaluation performed")
  return(nbi_data)
}
