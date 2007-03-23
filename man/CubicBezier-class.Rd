\name{CubicBezier-class}
\docType{class}
\alias{CubicBezier-class}
\alias{basePoint1,CubicBezier-method}
\alias{basePoint1}
\alias{basePoint1<-,CubicBezier-method}
\alias{basePoint1<-}
\alias{basePoint2,CubicBezier-method}
\alias{basePoint2}
\alias{basePoint2<-,CubicBezier-method}
\alias{basePoint2<-}

\title{SBML type "CubicBezier"}
\description{A cubic bezier curve in an SBML layout.}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("CubicBezier", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{basePoint1}:}{Object of class \code{"Point"} indicating the
    position of the base point closest to the starting point. }
    \item{\code{basePoint2}:}{Object of class \code{"Point"} indicating the
    position of the base point farthest from the starting point. }
    \item{\code{start}:}{Object of class \code{"Point"} ~~ }
    \item{\code{end}:}{Object of class \code{"Point"} ~~ }
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
Class \code{"\linkS4class{LineSegment}"}, directly.
Class \code{"\linkS4class{SBase}"}, by class "LineSegment", distance 2.
}
\section{Methods}{
  \describe{
    \item{basePoint1}{\code{signature(object = "CubicBezier")}: gets the \code{basePoint1} slot }
    \item{basePoint1<-}{\code{signature(object = "CubicBezier")}: sets the \code{basePoint1} slot }
    \item{basePoint2}{\code{signature(object = "CubicBezier")}: gets the \code{basePoint2} slot }
    \item{basePoint2<-}{\code{signature(object = "CubicBezier")}: sets the \code{basePoint2} slot }
	 }
}
\references{\url{http://projects.villa-bosch.de/bcb/sbml}}
\author{Michael Lawrence}
\keyword{classes}
