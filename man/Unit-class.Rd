\name{Unit-class}
\docType{class}
\alias{Unit-class}
\alias{exponent,Unit-method}
\alias{exponent}
\alias{exponent<-,Unit-method}
\alias{exponent<-}
\alias{kind,Unit-method}
\alias{kind}
\alias{kind<-,Unit-method}
\alias{kind<-}
\alias{multiplier,Unit-method}
\alias{multiplier}
\alias{multiplier<-,Unit-method}
\alias{multiplier<-}
\alias{offset,Unit-method}
\alias{offset}
\alias{offset<-,Unit-method}
\alias{offset<-}
\alias{scale,Unit-method}
\alias{scale}
\alias{scale<-,Unit-method}
\alias{scale<-}

\title{SBML type "Unit"}
\description{	A (possibly transformed) reference to a base \code{UnitKind}. The
transformation is of the form: $multiplier * 10^scale * x^exponent + offset$.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Unit", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{kind}:}{Object of class \code{"character"} identifying a
    an SBML \code{UnitKind}. For possible values see Table 2 in the SBML specification.}
    \item{\code{exponent}:}{Object of class \code{"integer"} indicating the
    exponent to use in the transformation.}
    \item{\code{scale}:}{Object of class \code{"integer"} indicating the
    order of magnitude of the scaling to use in the transformation.}
    \item{\code{multiplier}:}{Object of class \code{"numeric"} indicating
    the factor to use for scaling in the transformation.}
    \item{\code{offset}:}{Object of class \code{"numeric"} indicating the
    amount of constant shift in the transformation.}
    \item{\code{metaId}:}{Object of class \code{"character"} that is an XML ID
      "described" by an RDF resource. This links an SBML element to an RDF
      resource. RDF may appear anywhere in an SBML element,
      but is usually placed inside the \code{annotation} element.}
    \item{\code{notes}:}{Object of class \code{"character"} 
      containing user-readable XHTML notes about an element. }
    \item{\code{annotation}:}{Object of class \code{"character"} containing
      additional machine-readable information about an element, usually as RDF,
      such as BioPAX. This is where application-specific data belongs.}
  }
}
\section{Extends}{
Class \code{"\linkS4class{SBase}"}, directly.
}
\section{Methods}{
  \describe{
    \item{exponent}{\code{signature(object = "Unit")}: gets the \code{exponent} slot }
    \item{exponent<-}{\code{signature(object = "Unit")}: sets the \code{exponent} slot }
    \item{kind}{\code{signature(object = "Unit")}: gets the \code{kind} slot }
    \item{kind<-}{\code{signature(object = "Unit")}: sets the \code{kind} slot }
    \item{multiplier}{\code{signature(object = "Unit")}: gets the \code{multiplier} slot }
    \item{multiplier<-}{\code{signature(object = "Unit")}: sets the \code{multiplier} slot }
    \item{offset}{\code{signature(object = "Unit")}: gets the \code{offset} slot }
    \item{offset<-}{\code{signature(object = "Unit")}: sets the \code{offset} slot }
    \item{scale}{\code{signature(x = "Unit")}: ... }
    \item{scale<-}{\code{signature(object = "Unit")}: sets the \code{scale} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
