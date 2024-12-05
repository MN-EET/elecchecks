#' Duplicate Check
#'
#' @param data_check Data set that is being checked
#'
#' @return A table of duplicates
#' @export
#'
#' @examples
#' dir <- system.file("extdata", package = "elecchecks")
#' file_check <- readxl::read_xlsx(paste(dir, "county_data.xlsx", sep = "/"))
#' dup_check(file_check)
dup_check <- function(data_check){

  dup_check <- data_check |>
    dplyr::mutate(row_id = paste(utility_id, county_name, as.character(year), sep = "_")) |>
    dplyr::group_by(row_id) |>
    dplyr::mutate(count = dplyr::n()) |>
    dplyr::filter(count > 1)

  if(nrow(dup_check) == 0){

    print("No duplicates found")

  } else{

    print("The following rows are duplicates")

    DT::datatable(dup_check)

  }

}
