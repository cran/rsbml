setGeneric("rsbml_graph", function(doc) standardGeneric("rsbml_graph"))
setMethod("rsbml_graph", "SBMLDocument", function(doc) 
  .Call("rsbml_R_build_graph", doc, PACKAGE="rsbml"))
setAs("SBMLDocument", "graph", function(from) rsbml_graph(from))
