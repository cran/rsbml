\name{LineSegment-class}
\docType{class}
\alias{LineSegment-class}
\alias{end,LineSegment-method}
\alias{end}
\alias{end<-,LineSegment-method}
\alias{end<-}
\alias{start,LineSegment-method}
\alias{start}
\alias{start<-,LineSegment-method}
\alias{start<-}

\title{SBML type "LineSegment"}
\description{	Describes a simple A-B line.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("LineSegment", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{start}:}{Object of class \code{"Point"} indicating the start position. }
    \item{\code{end}:}{Object of class \code{"Point"} indicating the end position. }
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
    \item{end}{\code{signature(x = "LineSegment")}: ... }
    \item{end<-}{\code{signature(object = "LineSegment")}: sets the \code{end} slot }
    \item{start}{\code{signature(x = "LineSegment")}: ... }
    \item{start<-}{\code{signature(object = "LineSegment")}: sets the \code{start} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
