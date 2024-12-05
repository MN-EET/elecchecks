#' Utility Name Check
#'
#' @param data_check A dataset to check
#' @param utility_table A list of valid utility names
#'
#' @return A table of non-valid utility names
#' @export
#'
#' @examples
#' dir <- system.file("extdata", package = "elecchecks")
#' file_check <- readxl::read_xlsx(paste(dir, "electric_class.xlsx", sep = "/"))
#' name_table <- tibble::tribble(~utility_name, "some_name")
#' valid_name_check(file_check, name_table)
valid_name_check <- function(data_check, utility_table){

  u_names <- data_check |>
    janitor::clean_names() |>
    dplyr::filter(!c(utility %in% utility_table$utility_name)) |>
    dplyr::select(utility, utility_id) |>
    dplyr::distinct(utility, utility_id)

  DT::datatable(u_names)

}
