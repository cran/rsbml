\name{Species-class}
\docType{class}
\alias{Species-class}
\alias{boundaryCondition,Species-method}
\alias{boundaryCondition}
\alias{boundaryCondition<-,Species-method}
\alias{boundaryCondition<-}
\alias{charge,Species-method}
\alias{charge}
\alias{charge<-,Species-method}
\alias{charge<-}
\alias{compartment,Species-method}
\alias{compartment}
\alias{compartment<-,Species-method}
\alias{compartment<-}
\alias{constant,Species-method}
\alias{constant}
\alias{constant<-,Species-method}
\alias{constant<-}
\alias{hasOnlySubstanceUnits,Species-method}
\alias{hasOnlySubstanceUnits}
\alias{hasOnlySubstanceUnits<-,Species-method}
\alias{hasOnlySubstanceUnits<-}
\alias{initialAmount,Species-method}
\alias{initialAmount}
\alias{initialAmount<-,Species-method}
\alias{initialAmount<-}
\alias{initialConcentration,Species-method}
\alias{initialConcentration}
\alias{initialConcentration<-,Species-method}
\alias{initialConcentration<-}
\alias{spatialSizeUnits,Species-method}
\alias{spatialSizeUnits}
\alias{spatialSizeUnits<-,Species-method}
\alias{spatialSizeUnits<-}
\alias{substanceUnits,Species-method}
\alias{substanceUnits<-,Species-method}
\alias{id<-,Species-method}
\alias{id,Species-method}
\alias{name<-,Species-method}
\alias{name,Species-method}
\alias{units<-,Species-method}
\alias{units,Species-method}

\title{SBML type "Species"}
\description{}
\section{Instantiation}{
Objects can be created by calls of the form \code{new("Species", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{id}:}{Object of class \code{"character"} uniquely identifying this component. }
    \item{\code{name}:}{Object of class \code{"character"} naming this component. }
    \item{\code{compartment}:}{Object of class \code{"character"} identifying the
      compartment in which this species is located.}
    \item{\code{initialAmount}:}{Object of class \code{"numeric"} indicating the
    initial amount for this species (mutually exclusive with \code{initialConcentration}).}
    \item{\code{initialConcentration}:}{Object of class \code{"numeric"} indicating the
      initial concentration for this species (mutually exclusive with \code{initialAmount}).}
    \item{\code{substanceUnits}:}{Object of class \code{"character"} identifying the
      units for the amount of this species or the numerator of the concentration.}
    \item{\code{spatialSizeUnits}:}{Object of class \code{"character"} identifying the
      units for the denominator of the species concentration.}
    \item{\code{hasOnlySubstanceUnits}:}{Object of class \code{"logical"} indicating 
      whether the quantity of this species is specified as an amount or a concentration.}
    \item{\code{boundaryCondition}:}{Object of class \code{"logical"}. If \code{TRUE},
      indicates that the quantity of this species cannot be changed by a reaction.}
    \item{\code{charge}:}{Object of class \code{"integer"} indicating the electrical
      charge of this species.}
    \item{\code{constant}:}{Object of class \code{"logical"} indicating whether
      the quantity of this species can change.}
    \item{\code{units}:}{Object of class \code{"character"}, deprecated. }
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
    \item{id}{\code{signature(object = "Species")}: gets the \code{id} slot }
    \item{id<-}{\code{signature(object = "Species")}: sets the \code{id} slot }
    \item{name}{\code{signature(object = "Species")}: gets the \code{name} slot }
    \item{name<-}{\code{signature(object = "Species")}: sets the \code{name} slot }
    \item{boundaryCondition}{\code{signature(object = "Species")}: gets the \code{boundaryCondition} slot }
    \item{boundaryCondition<-}{\code{signature(object = "Species")}: sets the \code{boundaryCondition} slot }
    \item{charge}{\code{signature(object = "Species")}: gets the \code{charge} slot }
    \item{charge<-}{\code{signature(object = "Species")}: sets the \code{charge} slot }
    \item{compartment}{\code{signature(object = "Species")}: gets the \code{compartment} slot }
    \item{compartment<-}{\code{signature(object = "Species")}: sets the \code{compartment} slot }
    \item{constant}{\code{signature(object = "Species")}: gets the \code{constant} slot }
    \item{constant<-}{\code{signature(object = "Species")}: sets the \code{constant} slot }
    \item{units}{\code{signature(object = "Species")}: gets the \code{constant} slot }
    \item{units<-}{\code{signature(object = "Species")}: sets the \code{constant} slot }
    \item{hasOnlySubstanceUnits}{\code{signature(object = "Species")}: gets the \code{hasOnlySubstanceUnits} slot }
    \item{hasOnlySubstanceUnits<-}{\code{signature(object = "Species")}: sets the \code{hasOnlySubstanceUnits} slot }
    \item{initialAmount}{\code{signature(object = "Species")}: gets the \code{initialAmount} slot }
    \item{initialAmount<-}{\code{signature(object = "Species")}: sets the \code{initialAmount} slot }
    \item{initialConcentration}{\code{signature(object = "Species")}: gets the \code{initialConcentration} slot }
    \item{initialConcentration<-}{\code{signature(object = "Species")}: sets the \code{initialConcentration} slot }
    \item{spatialSizeUnits}{\code{signature(object = "Species")}: gets the \code{spatialSizeUnits} slot }
    \item{spatialSizeUnits<-}{\code{signature(object = "Species")}: sets the \code{spatialSizeUnits} slot }
    \item{substanceUnits}{\code{signature(object = "Species")}: gets the \code{substanceUnits} slot }
    \item{substanceUnits<-}{\code{signature(object = "Species")}: sets the \code{substanceUnits} slot }
	 }
}
\references{\url{http://sbml.org/documents/}}
\author{Michael Lawrence}
\keyword{classes}
