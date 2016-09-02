#' List Package Names and Repos
#'
#' List Package Names and Repos
#'
#' @param current packages from current version of R or previous
#' @export
#' @examples p_repos()
p_repos <- function (current = TRUE) {
    if (current) {
        path <- pacman::p_path()
    }
    else {
        path <- p_path_previous()
    }
    pkgs <- list.files(path, recursive = F)
    descr_files <- file.path(path, pkgs, "DESCRIPTION")
    ll <- vector("list", length = length(descr_files))
    ll <- lapply(descr_files, readLines)
    github <- sapply(ll, function(x) {
        repo_details <- "GithubUsername:|GithubRepo:"
        x <- grep(repo_details, x, value = T, ignore.case = T)
        if (length(x) != 0)
            paste(trimws(gsub(repo_details, "", x))[c(2, 1)],
                collapse = "/")
    })
    repos <- sapply(github, function(x) ifelse(length(x) == 0,
        "cran", x))
    cbind(pkgs, repos)
}

