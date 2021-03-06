\name{subs}
\alias{subs}
\title{A version of substitute that works in the global environment.}
\usage{
  subs(x, env = parent.frame())
}
\description{
  This version of \code{\link{substitute}} is more suited
  for interactive exploration because it will perform
  substitution in the global environment: the regular
  version has a special case for the global environment
  where it effectively works like \code{\link{quote}}
}
\section{Substitution rules}{
  Formally, substitution takes place by examining each name
  in the expression. If the name refers to:

  \itemize{

  \item an ordinary variable, it's replaced by the value of
  the variable.

  \item a promise, it's replaced by the expression
  associated with the promise.

  \item \code{...}, it's replaced by the contents of
  \code{...} }
}
\examples{
a <- 1
b <- 2
x <- quote(a + b)
substitute(x)

subs(x)
}

