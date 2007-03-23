setClass("Dimensions", representation(width = "numeric", 
  height = "numeric", depth = "numeric"), prototype = list(depth = 0), contains = "SBase")

 setGeneric("width", function(object) standardGeneric("width"))
setMethod("width", "Dimensions", function(object) object@width)

 setGeneric("height", function(object) standardGeneric("height"))
setMethod("height", "Dimensions", function(object) object@height)

 setGeneric("depth", function(object) standardGeneric("depth"))
setMethod("depth", "Dimensions", function(object) object@depth)

 setGeneric("width<-", function(object, value) standardGeneric("width<-"))
setReplaceMethod("width", "Dimensions", function(object, value) {
  object@width <- value
  object
})

 setGeneric("height<-", function(object, value) standardGeneric("height<-"))
setReplaceMethod("height", "Dimensions", function(object, value) {
  object@height <- value
  object
})

 setGeneric("depth<-", function(object, value) standardGeneric("depth<-"))
setReplaceMethod("depth", "Dimensions", function(object, value) {
  object@depth <- value
  object
})

