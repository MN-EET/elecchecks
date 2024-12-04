#' County Check
#'
#' @param file_check A county electricity table that needs to be checked
#' @param dest_dir The directory that you want the markdown file written to
#'
#' @return An HTML markdown document
#' @export
#'
#' @examples
county_check <- function(file_check, dest_dir){
  rmarkdown::render("inst/rmarkdown/templates/county_template/skeleton/skeleton.Rmd",
                    params = list(
                      file_check = file_check
                    ),
                    output_file = "REIS County Electricity Sales.html",
                    output_dir = dest_dir)
}

