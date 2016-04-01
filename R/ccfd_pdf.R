#' Elsevier journal format.
#'
#' Format for creating submissions to Elsevier journals. Adapted from
#' \href{https://www.elsevier.com/authors/author-schemas/latex-instructions}{https://www.elsevier.com/authors/author-schemas/latex-instructions}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "elsevier_article", package = "rticles")
#' }
#'
#' @export
ccfd_pdf <- function(...,
                             keep_tex = TRUE,
                             md_extensions = c("-autolink_bare_uris")) {
  Sys.setenv(TEXINPUTS=paste(system.file("rmarkdown","templates","ccfd_pdf","resources", package="ccfdinstr"),"",sep=":"))
  inherit_pdf_document(...,
                       template = find_resource("ccfd_pdf", "template.tex"),
                       keep_tex = keep_tex,
                       md_extensions = md_extensions)
}
