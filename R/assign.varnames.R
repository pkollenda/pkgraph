#' Assign variable labels
#'
#' Use Stata's variable labels and assign them to R variables
#'
#'
#' @param data A data frame.
#'
#' @author Philipp Kollenda
#'
#' @importFrom readstata13 varlabel
#'
#' @return A data frame with assigned labels
#' @export assign.varnames
#'
assign.varnames <- function(data) {
  if(is.null(attributes(data)$var.labels)) {
    return(message("Data has no variable label attribute. Was it really imported with readstata13?"))
  } else {
    for(v in names(readstata13::varlabel(data))) {
      attr(data[, v], "label") <- readstata13::varlabel(data)[v]
    }
  }
  return(data)
}
