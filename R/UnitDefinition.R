setClass("UnitDefinition", representation(id = "character", name = "character", units = "list"), 
  contains = "SBase")

 
setMethod("id", "UnitDefinition", function(object) object@id)

 
setMethod("name", "UnitDefinition", function(object) object@name)

setMethod("units", "UnitDefinition", function(x) x@units)

 
setReplaceMethod("id", "UnitDefinition", function(object, value) {
  object@id <- value
  object
})

 
setReplaceMethod("name", "UnitDefinition", function(object, value) {
  object@name <- value
  object
})

setReplaceMethod("units", "UnitDefinition", function(x, value) {
  if (!all(sapply(value, inherits, "Unit")))
    stop("All units must be Unit objects")
  x@units <- value
  x
})

