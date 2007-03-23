setClass("CubicBezier", representation(basePoint1 = "Point", basePoint2 = "Point"), 
  contains = "LineSegment")

 setGeneric("basePoint1", function(object) standardGeneric("basePoint1"))
setMethod("basePoint1", "CubicBezier", function(object) object@basePoint1)

 setGeneric("basePoint2", function(object) standardGeneric("basePoint2"))
setMethod("basePoint2", "CubicBezier", function(object) object@basePoint2)

 setGeneric("basePoint1<-", function(object, value) standardGeneric("basePoint1<-"))
setReplaceMethod("basePoint1", "CubicBezier", function(object, value) {
  object@basePoint1 <- value
  object
})

 setGeneric("basePoint2<-", function(object, value) standardGeneric("basePoint2<-"))
setReplaceMethod("basePoint2", "CubicBezier", function(object, value) {
  object@basePoint2 <- value
  object
})

