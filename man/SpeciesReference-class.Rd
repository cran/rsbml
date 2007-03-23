\name{SpeciesReference-class}
\docType{class}
\alias{SpeciesReference-class}
\alias{stoichiometry,SpeciesReference-method}
\alias{stoichiometry}
\alias{stoichiometry<-,SpeciesReference-method}
\alias{stoichiometry<-}
\alias{stoichiometryMath,SpeciesReference-method}
\alias{stoichiometryMath}
\alias{stoichiometryMath<-,SpeciesReference-method}
\alias{stoichiometryMath<-}

\title{SBML type "SpeciesReference"}
\description{Binds a reactant or product \code{\linkS4class{Species}} to 
a \code{\linkS4class{Reaction}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("SpeciesReference", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{stoichiometry}:}{Object of class \code{"numeric"} indicating the
      (static) stoichiometric coefficient.}
    \item{\code{stoichiometryMath}:}{Object of class \code{"StoichiometryMath"} 
      that dynamically calculates the stoichiometric coefficient.}
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{species}:}{Object of class \code{"character"} identifying the
      \code{\linkS4class{Species}} being referenced.}
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
Class \code{"\linkS4class{SimpleSpeciesReference}"}, directly.
Class \code{"\linkS4class{SBase}"}, by class "SimpleSpeciesReference", distance 2.
}
\section{Methods}{
  \describe{
    \item{stoichiometry}{\code{signature(object = "SpeciesReference")}: gets the \code{stoichiometry} slot }
    \item{stoichiometry<-}{\code{signature(object = "SpeciesReference")}: sets the \code{stoichiometry} slot }
    \item{stoichiometryMath}{\code{signature(object = "SpeciesReference")}: gets the \code{stoichiometryMath} slot }
    \item{stoichiometryMath<-}{\code{signature(object = "SpeciesReference")}: sets the \code{stoichiometryMath} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
