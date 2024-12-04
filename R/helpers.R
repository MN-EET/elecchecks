#' County Check
#'
#' @param file_path The path to the county electricity file that needs to be checked
#'
#' @return An HTML markdown document
#' @export
#'
#' @examples
county_check <- function(file_path){
  rmarkdown::render("inst/rmarkdown/templates/county_template/skeleton/skeleton.Rmd",
                    params = list(
                      file_path = file_path
                    ))
}

