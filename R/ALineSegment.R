setClass("LineSegment", representation(start = "Point", end = "Point"), contains = "SBase")

 setGeneric("start", function(x, ...) standardGeneric("start"))
setMethod("start", "LineSegment", function(x, ...) x@start)

 setGeneric("end", function(x, ...) standardGeneric("end"))
setMethod("end", "LineSegment", function(x, ...) x@end)

 setGeneric("start<-", function(object, value) standardGeneric("start<-"))
setReplaceMethod("start", "LineSegment", function(object, value) {
  object@start <- value
  object
})

 setGeneric("end<-", function(object, value) standardGeneric("end<-"))
setReplaceMethod("end", "LineSegment", function(object, value) {
  object@end <- value
  object
})

