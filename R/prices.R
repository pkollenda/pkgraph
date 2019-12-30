#' Price Data
#'
#' A dataset containing information on prices over time for different countries and goods.
#' Prices are in 2010 USD (converted with monthly exchange rate) per tonne. Prices denote producer prices.
#'
#'  @format A data frame of 451368 rows and 4 columns
#'  \describe{
#'   \item{Country}{Country}
#'   \item{Date}{Year and Month of Price Information}
#'   \item{Price}{Producer Price in Constant 2010 USD per Tonne}
#'   \item{Item}{Produce}
#'  }
#'  @source I think from a FAO database.
"prices"
