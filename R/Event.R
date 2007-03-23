setClass("Event", representation(id = "character", name = "character", trigger = "expression", 
  delay = "expression", timeUnits = "character", eventAssignments = "list"), 
  contains = "SBase")

 
setMethod("id", "Event", function(object) object@id)

 
setMethod("name", "Event", function(object) object@name)

 setGeneric("trigger", function(object) standardGeneric("trigger"))
setMethod("trigger", "Event", function(object) object@trigger)

 setGeneric("delay", function(x, env) standardGeneric("delay"))
setMethod("delay", "Event", function(x, env) x@delay)

 setGeneric("timeUnits", function(object) standardGeneric("timeUnits"))
setMethod("timeUnits", "Event", function(object) object@timeUnits)

 setGeneric("eventAssignments", function(object) standardGeneric("eventAssignments"))
setMethod("eventAssignments", "Event", function(object) object@eventAssignments)

 
setReplaceMethod("id", "Event", function(object, value) {
  object@id <- value
  object
})

 
setReplaceMethod("name", "Event", function(object, value) {
  object@name <- value
  object
})

 setGeneric("trigger<-", function(object, value) standardGeneric("trigger<-"))
setReplaceMethod("trigger", "Event", function(object, value) {
  object@trigger <- value
  object
})

 setGeneric("delay<-", function(object, value) standardGeneric("delay<-"))
setReplaceMethod("delay", "Event", function(object, value) {
  object@delay <- value
  object
})

 setGeneric("timeUnits<-", function(object, value) standardGeneric("timeUnits<-"))
setReplaceMethod("timeUnits", "Event", function(object, value) {
  object@timeUnits <- value
  object
})

 setGeneric("eventAssignments<-", function(object, value) standardGeneric("eventAssignments<-"))
setReplaceMethod("eventAssignments", "Event", function(object, value) {
  if (!all(sapply(value, inherits, "Parameter")))
    stop("All assignments must be EventAssignment objects")
  object@eventAssignments <- value
  object
})

