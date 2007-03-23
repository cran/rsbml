setClass("Point", representation(x = "numeric", y = "numeric", 
  z = "numeric"), prototype = list(z = 0), contains = "SBase")

 setGeneric("x", function(object) standardGeneric("x"))
setMethod("x", "Point", function(object) object@x)

 setGeneric("y", function(object) standardGeneric("y"))
setMethod("y", "Point", function(object) object@y)

 setGeneric("z", function(object) standardGeneric("z"))
setMethod("z", "Point", function(object) object@z)

 setGeneric("x<-", function(object, value) standardGeneric("x<-"))
setReplaceMethod("x", "Point", function(object, value) {
  object@x <- value
  object
})

 setGeneric("y<-", function(object, value) standardGeneric("y<-"))
setReplaceMethod("y", "Point", function(object, value) {
  object@y <- value
  object
})

 setGeneric("z<-", function(object, value) standardGeneric("z<-"))
setReplaceMethod("z", "Point", function(object, value) {
  object@z <- value
  object
})

