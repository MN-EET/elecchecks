#' Set Credentials
#'
#' @return Credentials for logging into the data warehouse
#' @export
#'
#' @examples
#' \dontrun{
#' set_credentials()
#' }
set_credentials <- function(){

  keyring::key_set("warehouse_name", prompt = "Warehouse name: ")
  keyring::key_set("warehouse_host", prompt = "Warehouse host: ")
  keyring::key_set("warehouse_port", prompt = "Warehouse port: ")
  keyring::key_set("warehouse_user", prompt = "Warehouse username: ")
  keyring::key_set("warehouse_password", prompt = "Warehouse password: ")

}
