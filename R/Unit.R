setClass("Unit", representation(kind = "character", exponent = "integer", 
  scale = "integer", multiplier = "numeric", offset = "numeric"), 
  contains = "SBase")

 setGeneric("kind", function(object) standardGeneric("kind"))
setMethod("kind", "Unit", function(object) object@kind)

 setGeneric("exponent", function(object) standardGeneric("exponent"))
setMethod("exponent", "Unit", function(object) object@exponent)

 setGeneric("scale", function(x, center, scale) standardGeneric("scale"))
setMethod("scale", "Unit", function(x, center, scale) x@scale)

 setGeneric("multiplier", function(object) standardGeneric("multiplier"))
setMethod("multiplier", "Unit", function(object) object@multiplier)

 setGeneric("offset", function(object) standardGeneric("offset"))
setMethod("offset", "Unit", function(object) object@offset)

.unitKinds <- c("ampere", "farad", "joule", "lux",	"radian", "volt", "becquerel",
  "gram",	"katal", "metre", "second", "watt", "candela", "gray", "	kelvin", "mole",
  "siemens", "weber", "Celsius", "henry", "kilogram", "newton", "sievert", 	
  "coulomb", 	"hertz", "litre", "ohm", "steradian", "dimensionless", "item", 
  "lumen", "pascal", "tesla")
 	
 setGeneric("kind<-", function(object, value) standardGeneric("kind<-"))
setReplaceMethod("kind", "Unit", function(object, value) {
  if (!(value %in% .unitKinds))
    stop("Invalid unit kind ", value, ". Unit kind must be one of ", .unitKinds)
  object@kind <- value
  object
})

 setGeneric("exponent<-", function(object, value) standardGeneric("exponent<-"))
setReplaceMethod("exponent", "Unit", function(object, value) {
  object@exponent <- as.integer(value)
  object
})

 setGeneric("scale<-", function(object, value) standardGeneric("scale<-"))
setReplaceMethod("scale", "Unit", function(object, value) {
  object@scale <- as.integer(value)
  object
})

 setGeneric("multiplier<-", function(object, value) standardGeneric("multiplier<-"))
setReplaceMethod("multiplier", "Unit", function(object, value) {
  object@multiplier <- value
  object
})

 setGeneric("offset<-", function(object, value) standardGeneric("offset<-"))
setReplaceMethod("offset", "Unit", function(object, value) {
  object@offset <- value
  object
})

