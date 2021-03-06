\name{unenclose}
\alias{unenclose}
\title{Unenclose a closure.}
\usage{
  unenclose(f)
}
\arguments{
  \item{f}{a closure}
}
\description{
  Unenclose a closure by substituting names for values
  found in the enclosing environment.
}
\examples{
power <- function(exp) {
  function(x) x ^ exp
}
square <- power(2)
cube <- power(3)

square
cube
unenclose(square)
unenclose(cube)
}

