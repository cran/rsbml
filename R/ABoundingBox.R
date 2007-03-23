setClass("BoundingBox", representation(id = "character", position = "Point", 
  dimensions = "Dimensions"), contains = "SBase")

 setGeneric("id", function(object) standardGeneric("id"))
setMethod("id", "BoundingBox", function(object) object@id)

 setGeneric("position", function(object) standardGeneric("position"))
setMethod("position", "BoundingBox", function(object) object@position)

 setGeneric("dimensions", function(object) standardGeneric("dimensions"))
setMethod("dimensions", "BoundingBox", function(object) object@dimensions)

 setGeneric("id<-", function(object, value) standardGeneric("id<-"))
setReplaceMethod("id", "BoundingBox", function(object, value) {
  object@id <- value
  object
})

 setGeneric("position<-", function(object, value) standardGeneric("position<-"))
setReplaceMethod("position", "BoundingBox", function(object, value) {
  object@position <- value
  object
})

 setGeneric("dimensions<-", function(object, value) standardGeneric("dimensions<-"))
setReplaceMethod("dimensions", "BoundingBox", function(object, value) {
  object@dimensions <- value
  object
})

