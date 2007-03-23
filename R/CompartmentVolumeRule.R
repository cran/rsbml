setClass("CompartmentVolumeRule", representation(compartment = "character"), 
  contains = "AssignmentRule")

setMethod("compartment", "CompartmentVolumeRule", function(object) object@compartment)

setReplaceMethod("compartment", "CompartmentVolumeRule", function(object, value) {
  object@compartment <- value
  object
})
