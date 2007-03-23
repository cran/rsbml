\name{Event-class}
\docType{class}
\alias{Event-class}
\alias{delay,Event-method}
\alias{delay}
\alias{delay<-,Event-method}
\alias{delay<-}
\alias{eventAssignments,Event-method}
\alias{eventAssignments}
\alias{eventAssignments<-,Event-method}
\alias{eventAssignments<-}
\alias{trigger,Event-method}
\alias{trigger}
\alias{trigger<-,Event-method}
\alias{trigger<-}
\alias{id<-,Event-method}
\alias{id,Event-method}
\alias{name<-,Event-method}
\alias{name,Event-method}
\alias{timeUnits<-,Event-method}
\alias{timeUnits,Event-method}

\title{SBML type "Event"}
\description{Description of a instantaneous, discontinuous change in the model state.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Event", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{trigger}:}{Object of class \code{"expression"} that evaluates to
    \code{TRUE} when the event is to be fired.}
    \item{\code{delay}:}{Object of class \code{"expression"} that evaluates to the
    time until execution of this event after it has been fired.}
    \item{\code{timeUnits}:}{Object of class \code{"character"} identifying the
    units of the delay.}
    \item{\code{eventAssignments}:}{Object of class \code{"list"} containing
    \code{\linkS4class{EventAssignment}}s that are performed at execution.}
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
    \item{id}{\code{signature(object = "Event")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "Event")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "Event")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "Event")}: sets the \code{name} slot }
    \item{timeUnits}{\code{signature(object = "Event")}: gets the \code{timeUnits} slot }
    \item{timeUnits<-}{\code{signature(object = "Event")}: sets the \code{timeUnits} slot }
    \item{delay}{\code{signature(x = "Event")}: ... }
    \item{delay<-}{\code{signature(object = "Event")}: sets the \code{delay} slot }
    \item{eventAssignments}{\code{signature(object = "Event")}: gets the \code{eventAssignments} slot }
    \item{eventAssignments<-}{\code{signature(object = "Event")}: sets the \code{eventAssignments} slot }
    \item{trigger}{\code{signature(object = "Event")}: gets the \code{trigger} slot }
    \item{trigger<-}{\code{signature(object = "Event")}: sets the \code{trigger} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
