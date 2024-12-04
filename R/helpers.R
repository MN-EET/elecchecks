#' County Check
#'
#' @param message a message to write
#'
#' @return
#' @export An HTML markdown document
#'
#' @examples
county_check <- function(message){
  rmarkdown::render("inst/rmarkdown/templates/county_template/skeleton/skeleton.Rmd",
                    params = list(
                      message = message
                    ))
}

