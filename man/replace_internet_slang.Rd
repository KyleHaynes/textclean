% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/replace_internet_slang.R
\name{replace_internet_slang}
\alias{replace_internet_slang}
\title{Replace Internet Slang}
\usage{
replace_internet_slang(
  x,
  slang = paste0("\\\\b", lexicon::hash_internet_slang[[1]], "\\\\b"),
  replacement = lexicon::hash_internet_slang[[2]],
  ignore.case = TRUE,
  ...
)
}
\arguments{
\item{x}{The text variable.}

\item{slang}{A vector of slang strings to replace.}

\item{replacement}{A vector of string to replace slang with.}

\item{ignore.case}{logical.  If \code{TRUE} the case of \code{slang} will be 
ignored (replacement regardless of case).}

\item{\dots}{Other arguments passed to \code{\link[textclean]{replace_tokens}}.}
}
\value{
Returns a vector with names replaced.
}
\description{
Replaces Internet slang.
}
\examples{
x <- c(
    "Marc the n00b needs to RTFM otherwise ymmv.",
    "TGIF and a big w00t!  The weekend is GR8!",
    "Will will do it",
    'w8...this PITA needs me to say LMGTFY...lmao.',
    NA
)

replace_internet_slang(x)
replace_internet_slang(x, ignore.case = FALSE)
replace_internet_slang(x, replacement = '<<SLANG>>')
replace_internet_slang(
    x, 
    replacement = paste0('{{ ', lexicon::hash_internet_slang[[2]], ' }}')
)
}
