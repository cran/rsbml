setClass("Species", representation(id = "character", name = "character", 
  compartment = "character", initialAmount = "numeric", initialConcentration = "numeric", 
  substanceUnits = "character", spatialSizeUnits = "character", hasOnlySubstanceUnits = "logical", 
  boundaryCondition = "logical", charge = "integer", constant = "logical", units = "character"), 
  contains = "SBase", prototype = list(boundaryCondition = FALSE))

 
setMethod("id", "Species", function(object) object@id)

 
setMethod("name", "Species", function(object) object@name)

setMethod("compartment", "Species", function(object) object@compartment)

 setGeneric("initialAmount", function(object) standardGeneric("initialAmount"))
setMethod("initialAmount", "Species", function(object) object@initialAmount)

 setGeneric("initialConcentration", function(object) standardGeneric("initialConcentration"))
setMethod("initialConcentration", "Species", function(object) object@initialConcentration)

setMethod("substanceUnits", "Species", function(object) object@substanceUnits)

 setGeneric("spatialSizeUnits", function(object) standardGeneric("spatialSizeUnits"))
setMethod("spatialSizeUnits", "Species", function(object) object@spatialSizeUnits)

 setGeneric("hasOnlySubstanceUnits", function(object) standardGeneric("hasOnlySubstanceUnits"))
setMethod("hasOnlySubstanceUnits", "Species", function(object) object@hasOnlySubstanceUnits)

 setGeneric("boundaryCondition", function(object) standardGeneric("boundaryCondition"))
setMethod("boundaryCondition", "Species", function(object) object@boundaryCondition)

 setGeneric("charge", function(object) standardGeneric("charge"))
setMethod("charge", "Species", function(object) object@charge)

setMethod("constant", "Species", function(object) object@constant)

setMethod("units", "Species", function(x) x@units)

 
setReplaceMethod("id", "Species", function(object, value) {
  object@id <- value
  object
})
 
setReplaceMethod("name", "Species", function(object, value) {
  object@name <- value
  object
})

setReplaceMethod("compartment", "Species", function(object, value) {
  object@compartment <- value
  object
})

 setGeneric("initialAmount<-", function(object, value) standardGeneric("initialAmount<-"))
setReplaceMethod("initialAmount", "Species", function(object, value) {
  object@initialAmount <- value
  object
})

 setGeneric("initialConcentration<-", function(object, value) standardGeneric("initialConcentration<-"))
setReplaceMethod("initialConcentration", "Species", function(object, value) {
  object@initialConcentration <- value
  object
})

setReplaceMethod("substanceUnits", "Species", function(object, value) {
  object@substanceUnits <- value
  object
})

 setGeneric("spatialSizeUnits<-", function(object, value) standardGeneric("spatialSizeUnits<-"))
setReplaceMethod("spatialSizeUnits", "Species", function(object, value) {
  object@spatialSizeUnits <- value
  object
})

 setGeneric("hasOnlySubstanceUnits<-", function(object, value) standardGeneric("hasOnlySubstanceUnits<-"))
setReplaceMethod("hasOnlySubstanceUnits", "Species", function(object, value) {
  object@hasOnlySubstanceUnits <- value
  object
})

 setGeneric("boundaryCondition<-", function(object, value) standardGeneric("boundaryCondition<-"))
setReplaceMethod("boundaryCondition", "Species", function(object, value) {
  object@boundaryCondition <- value
  object
})

 setGeneric("charge<-", function(object, value) standardGeneric("charge<-"))
setReplaceMethod("charge", "Species", function(object, value) {
  object@charge <- as.integer(value)
  object
})

setReplaceMethod("constant", "Species", function(object, value) {
  object@constant <- value
  object
})

setReplaceMethod("units", "Species", function(x, value) {
  x@units <- value
  x
})
