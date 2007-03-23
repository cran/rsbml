setClass("Compartment", representation(id = "character", name = "character", 
  spatialDimensions = "integer", size = "numeric", units = "character", 
  outside = "character", constant = "logical"), 
  prototype = list(spatialDimensions = as.integer(3), constant = TRUE), 
  contains = "SBase")

 
setMethod("id", "Compartment", function(object) object@id)

 setGeneric("name", function(object) standardGeneric("name"))
setMethod("name", "Compartment", function(object) object@name)

 setGeneric("spatialDimensions", function(object) standardGeneric("spatialDimensions"))
setMethod("spatialDimensions", "Compartment", function(object) object@spatialDimensions)

 setGeneric("size", function(object) standardGeneric("size"))
setMethod("size", "Compartment", function(object) object@size)

 setGeneric("units", function(x) standardGeneric("units"))
setMethod("units", "Compartment", function(x) x@units)

 setGeneric("outside", function(object) standardGeneric("outside"))
setMethod("outside", "Compartment", function(object) object@outside)

 setGeneric("constant", function(object) standardGeneric("constant"))
setMethod("constant", "Compartment", function(object) object@constant)

 
 
setReplaceMethod("id", "Compartment", function(object, value) {
  object@id <- value
  object
})

 setGeneric("name<-", function(object, value) standardGeneric("name<-"))
setReplaceMethod("name", "Compartment", function(object, value) {
  object@name <- value
  object
})

 setGeneric("spatialDimensions<-", function(object, value) standardGeneric("spatialDimensions<-"))
setReplaceMethod("spatialDimensions", "Compartment", function(object, value) {
  value <- as.integer(value)
  if (!(value %in% c(0:3)))
    stop("spatialDimensions must be a integer within [0,3]")
  object@spatialDimensions <- value
  object
})

 setGeneric("size<-", function(object, value) standardGeneric("size<-"))
setReplaceMethod("size", "Compartment", function(object, value) {
  object@size <- value
  object
})

 setGeneric("units<-", function(x, value) standardGeneric("units<-"))
setReplaceMethod("units", "Compartment", function(x, value) {
  x@units <- value
  x
})

 setGeneric("outside<-", function(object, value) standardGeneric("outside<-"))
setReplaceMethod("outside", "Compartment", function(object, value) {
  object@outside <- value
  object
})

 setGeneric("constant<-", function(object, value) standardGeneric("constant<-"))
setReplaceMethod("constant", "Compartment", function(object, value) {
  object@constant <- value
  object
})

