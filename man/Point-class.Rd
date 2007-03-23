\name{Point-class}
\docType{class}
\alias{Point-class}
\alias{x,Point-method}
\alias{x}
\alias{x<-,Point-method}
\alias{x<-}
\alias{y,Point-method}
\alias{y}
\alias{y<-,Point-method}
\alias{y<-}
\alias{z,Point-method}
\alias{z}
\alias{z<-,Point-method}
\alias{z<-}

\title{SBML type "Point"}
\description{Specifies a position in 3D space.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Point", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{x}:}{Object of class \code{"numeric"} indicating the X coordinate }
    \item{\code{y}:}{Object of class \code{"numeric"} indicating the Y coordinate }
    \item{\code{z}:}{Object of class \code{"numeric"} indicating the Z coordinate }
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
    \item{x}{\code{signature(object = "Point")}: gets the \code{x} slot }
    \item{x<-}{\code{signature(object = "Point")}: sets the \code{x} slot }
    \item{y}{\code{signature(object = "Point")}: gets the \code{y} slot }
    \item{y<-}{\code{signature(object = "Point")}: sets the \code{y} slot }
    \item{z}{\code{signature(object = "Point")}: gets the \code{z} slot }
    \item{z<-}{\code{signature(object = "Point")}: sets the \code{z} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
