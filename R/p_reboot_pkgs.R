#' Install Updated Versions of Packages for New R Version
#'
#' Install Updated Versions of Packages for New R Version
#'
#' @param pkgs packages you had before updating to new version of R
#' @export
#' @examples
#' \dontrun{
#' p_reboot_pkgs()
#' }
p_reboot_pkgs <- function (pkgs = p_repos(FALSE)) {
    pacman::p_install(pkg[, "pkgs"][grepl("cran", pkg[, "repos"])])
    pacman::p_install_gh(pkg[, "pkgs"][!grepl("cran", pkg[, "repos"])])
}

