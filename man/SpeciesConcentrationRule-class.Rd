\name{SpeciesConcentrationRule-class}
\docType{class}
\alias{SpeciesConcentrationRule-class}
\alias{species,SpeciesConcentrationRule-method}
\alias{species<-,SpeciesConcentrationRule-method}

\title{SBML type "SpeciesConcentrationRule"}
\description{\strong{Obsolete} type of rule that describes the concentration of
\code{\linkS4class{Species}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("SpeciesConcentrationRule", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{species}:}{Object of class \code{"character"} identifying the 
      \code{\linkS4class{Species}}.}
    \item{\code{variable}:}{Object of class \code{"character"}, ignored. }
    \item{\code{type}:}{Object of class \code{"character"}, deprecated. }
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
Class \code{"\linkS4class{AssignmentRule}"}, directly.
Class \code{"\linkS4class{Rule}"}, by class "AssignmentRule", distance 2.
Class \code{"\linkS4class{SBase}"}, by class "AssignmentRule", distance 3.
}
\section{Methods}{
  \describe{
    \item{species}{\code{signature(object = "SpeciesConcentrationRule")}: gets the \code{species} slot }
    \item{species<-}{\code{signature(object = "SpeciesConcentrationRule")}: sets the \code{species} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
