#' County Check
#'
#' @param file_check A county electricity table that needs to be checked
#' @param dest_dir The directory that you want the markdown file written to
#'
#' @return An HTML markdown document
#' @export
#'
#' @examples
#' \dontrun{
#' dest_dir <- getwd()
#' dir <- system.file("extdata", package = "elecchecks")
#' file_check <- readxl::read_xlsx(paste(dir, "county_data.xlsx", sep = "/"))
#' county_check(file_check, dest_dir)
#' }
county_check <- function(file_check, dest_dir){

  markdown_path <- system.file("rmarkdown/templates/county_template/skeleton", "skeleton.Rmd", package = "elecchecks")

  dbname <- keyring::key_get("warehouse_name")
  host <- keyring::key_get("warehouse_host")
  port <- keyring::key_get("warehouse_port")
  user <- keyring::key_get("warehouse_user")
  password <- keyring::key_get("warehouse_password")

  rmarkdown::render(markdown_path,
                    params = list(
                      file_check = file_check,
                      dbname = dbname,
                      host = host,
                      port = port,
                      user = user,
                      password = password
                    ),
                    output_file = "REIS County Electricity Sales.html",
                    output_dir = dest_dir)
}

