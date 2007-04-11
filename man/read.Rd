\alias{rsbml_read}
\name{SBML import}
\title{Read in an SBML file (start here)}
\description{Read an SBML file into R.}
\usage{rsbml_read(filename, text, check = TRUE, validate = FALSE)}
\arguments{
  \item{filename}{the name of the SBML file to parse}
  \item{text}{a string of SBML text to parse (instead of file)}
  \item{check}{whether to report problems encountered during parsing}
  \item{validate}{whether to perform XML schema validation}
}
\value{a \code{\linkS4class{SBMLDocument}}}
\author{Michael Lawrence}
\keyword{IO}
