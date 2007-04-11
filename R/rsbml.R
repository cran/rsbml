rsbml_read <- 
function(filename, text, check = TRUE, validate = FALSE)
{
  if (!missing(filename))
    obj <- .Call("rsbml_R_read_doc", as.character(filename), 
      as.logical(validate), PACKAGE="rsbml")
  else if (!missing(text))
    obj <- .Call("rsbml_R_read_doc_from_string", as.character(text), 
      as.logical(validate), PACKAGE="rsbml")
  else stop("You must supply either 'filename' or 'text'")
  if (check && !rsbml_check(obj))
    stop("There were problems importing the SBML document")
  obj
}

setGeneric("rsbml_dom", function(doc) standardGeneric("rsbml_dom"))
setMethod("rsbml_dom", "SBMLDocument", function(doc) 
  .Call("rsbml_R_build_dom", doc, PACKAGE="rsbml"))
setAs("SBMLDocument", "SBML", function(from) rsbml_dom(from))

setGeneric("rsbml_doc", function(model) standardGeneric("rsbml_doc"))
setMethod("rsbml_doc", "SBML", function(model) 
  .Call("rsbml_R_build_doc", model, PACKAGE="rsbml"))
setAs("SBML", "SBMLDocument", function(from) rsbml_doc(from))

setGeneric("rsbml_xml", function(x) standardGeneric("rsbml_xml"))
setMethod("rsbml_xml", "SBMLDocument", function(x) 
  .Call("rsbml_R_write_doc_to_string", x, PACKAGE="rsbml"))
setMethod("rsbml_xml", "SBML", function(x) {
  doc <- rsbml_doc(x)
  rsbml_xml(doc)
})
as.character.SBMLDocument <- as.character.SBML <- function(x, ...) rsbml_xml(x)

setGeneric("rsbml_write", function(object, filename) standardGeneric("rsbml_write"))
setMethod("rsbml_write", "SBMLDocument", function(object, filename) 
  .Call("rsbml_R_write_doc", object, as.character(filename), PACKAGE="rsbml"))
setMethod("rsbml_write", "SBML", function(object, filename) {
  doc <- rsbml_doc(object)
  rsbml_write(doc, filename)
})

setGeneric("rsbml_check", function(object, quiet = FALSE) standardGeneric("rsbml_check"))
setMethod("rsbml_check", "SBMLDocument", function(object, quiet = FALSE) {
  valid <- .Call("rsbml_R_check_doc", object, PACKAGE="rsbml")
  if (!quiet && !valid) {
    problems <- rsbml_problems(object)
    sapply(names(problems)[sapply(problems, length) > 0], function(type) 
      sapply(problems[[type]], function(problem) 
        warning(paste("[", type , "] (", problem$line, ", ", problem$column, ") ", 
          problem$message, sep=""), call. = FALSE)))
  }
  valid
})

setGeneric("rsbml_problems", function(object) standardGeneric("rsbml_problems"))
setMethod("rsbml_problems", "SBMLDocument", function(object) 
  .Call("rsbml_R_problems", object, PACKAGE="rsbml"))
