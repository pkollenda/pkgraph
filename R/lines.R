#' Create Line Graphs
#'
#' Create a line, time series graph based on ggplot.
#'
#' Use ggplot's geom_line geom to create line charts that are visually appealing and in line with a common
#' theme and visualization style.
#'
#' @param data A data frame.
#' @param time The time dimension.
#' @param value The value of the time series.
#' @param group The grouping variable to specify numerous lines.
#'
#' @author Philipp Kollenda
#'
#' @import tidyverse
#' @importFrom
#' @importFrom
#'
#' @return A ggplot style time series graph.
#' @export lines
#'
#' @examples
#' \dontrun{
#'
#'   }
lines <- function(
  data,
  time, value,
  group) {

  # 0) Prepare data

  # 1) Start by specifying the mappings that should hold for all geoms.
  p <- ggplot({{data}}, aes(x = {{time}}, y = {{value}})))

  # 2) Add all the relevant geoms that I want to have.
  p <- p + geom_line()

  # 3) Add groups if desired
  if(!missing(group)){p <- p + geom_line(aes(group = {{group}}))}

  # 3) Add highlighted variable if desired.

  # 5) Adjust (if desired) the scales.

  # 6) Add all the labels.


  # 7) Set and adjust the main theme.

  return(p)
}

