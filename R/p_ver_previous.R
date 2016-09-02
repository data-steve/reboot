#' Obtain Last Version of R
#'
#' Obtain Last Version of R
#'
#' @param steps_back how many versions to go back
#' @export
#' @examples p_ver_previous()
p_ver_previous <-function (steps_back = 1) {
    as.numeric(
      gsub("(\\d+.)(\\d+)(.\\d+)", "\\1\\2", pacman::p_ver())
      ) -
        (0.1 * steps_back)
}

