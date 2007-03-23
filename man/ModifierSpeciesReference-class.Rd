\name{ModifierSpeciesReference-class}
\docType{class}
\alias{ModifierSpeciesReference-class}

\title{SBML type "ModifierSpeciesReference"}
\description{Identifies a \code{\linkS4class{Species}} that modifies the parent
\code{\linkS4class{Reaction}}.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("ModifierSpeciesReference", ...)}.
}
\section{Slots}{
	 \describe{
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
No methods defined with class "ModifierSpeciesReference" in the signature.
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
