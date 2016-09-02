#' Obtain Path to Libraries of Previous R Version
#'
#' Obtain Path to Libraries of Previous R Version
#'
#' @param steps_back how many versions to go back
#' @export
#' @examples p_path_previous()
p_path_previous <- function (steps_back = 1) {
    gsub(as.character(p_ver_previous(0))
         , p_ver_previous(steps_back)
         , pacman::p_path())
}

