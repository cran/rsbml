setClass("Parameter", representation(id = "character", name = "character", 
  value = "numeric", units = "character", constant = "logical"), 
  contains = "SBase")

 
setMethod("id", "Parameter", function(object) object@id)

 
setMethod("name", "Parameter", function(object) object@name)

 setGeneric("value", function(object) standardGeneric("value"))
setMethod("value", "Parameter", function(object) object@value)

setMethod("units", "Parameter", function(x) x@units)

setMethod("constant", "Parameter", function(object) object@constant)

 
setReplaceMethod("id", "Parameter", function(object, value) {
  object@id <- value
  object
})

 
setReplaceMethod("name", "Parameter", function(object, value) {

  object@name <- value
  object
})

 setGeneric("value<-", function(object, value) standardGeneric("value<-"))
setReplaceMethod("value", "Parameter", function(object, value) {
  object@value <- value
  object
})

setReplaceMethod("units", "Parameter", function(x, value) {
  x@units <- value
  x
})

setReplaceMethod("constant", "Parameter", function(object, value) {
  object@constant <- value
  object
})

