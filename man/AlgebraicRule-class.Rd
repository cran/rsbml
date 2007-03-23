\name{AlgebraicRule-class}
\docType{class}
\alias{AlgebraicRule-class}

\title{SBML type "AlgebraicRule"}
\description{Expresses equations that are not assignments nor rates of change.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("AlgebraicRule", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{math}:}{Object of class \code{"expression"} specifying the equation. }
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
Class \code{"\linkS4class{Rule}"}, directly.
Class \code{"\linkS4class{SBase}"}, by class "Rule", distance 2.
}
\section{Methods}{
No methods defined with class "AlgebraicRule" in the signature.
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
