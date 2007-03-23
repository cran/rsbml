\alias{rsbml_read}
\name{read}
\title{Read in an SBML file}
\description{Read an SBML file into R.}
\usage{rsbml_read(filename, text, validate = F)}
\arguments{
  \item{filename}{the name of the SBML file to parse}
  \item{text}{a string of SBML text to parse (instead of file)}
  \item{validate}{whether the document should be validated after parsing}
}
\value{a \code{\linkS4class{SBMLDocument}}}
\author{Michael Lawrence}
\keyword{IO}
