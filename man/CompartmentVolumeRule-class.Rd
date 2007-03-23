\name{CompartmentVolumeRule-class}
\docType{class}
\alias{CompartmentVolumeRule-class}
\alias{compartment,CompartmentVolumeRule-method}
\alias{compartment<-,CompartmentVolumeRule-method}

\title{SBML type "CompartmentVolumeRule"}
\description{ \strong{Obsolete} way to assign a volume to a \code{\linkS4class{Compartment}}. }
\section{Instantiation}{
Objects can be created by calls of the form \code{new("CompartmentVolumeRule", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{compartment}:}{Object of class \code{"character"} identifying the compartment }
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
    \item{compartment}{\code{signature(object = "CompartmentVolumeRule")}: gets the \code{compartment} slot }
    \item{compartment<-}{\code{signature(object = "CompartmentVolumeRule")}: sets the \code{compartment} slot }
  }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
