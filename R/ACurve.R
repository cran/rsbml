setClass("Curve", representation(curveSegments = "list"), contains = "SBase")

 setGeneric("curveSegments", function(object) standardGeneric("curveSegments"))
setMethod("curveSegments", "Curve", function(object) object@curveSegments)

 setGeneric("curveSegments<-", function(object, value) standardGeneric("curveSegments<-"))
setReplaceMethod("curveSegments", "Curve", function(object, value) {
  if (!all(sapply(value, inherits, "LineSegment")))
    stop("All curve segments must be LineSegment objects")
  object@curveSegments <- value
  object
})

