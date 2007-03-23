#include "rsbml.h"
#include <xml/ParseMessage.h>

static SEXP
rsbml_problem(ParseMessage_t *msg)
{
  SEXP r_problem, r_names;
  PROTECT(r_problem = NEW_LIST(3));
  
  SET_VECTOR_ELT(r_problem, 0, ScalarInteger(ParseMessage_getLine(msg)));
  SET_VECTOR_ELT(r_problem, 1, ScalarInteger(ParseMessage_getColumn(msg)));
  SET_VECTOR_ELT(r_problem, 2, mkString(ParseMessage_getMessage(msg)));
  
  PROTECT(r_names = NEW_CHARACTER(3));
  SET_STRING_ELT(r_names, 0, mkChar("line"));
  SET_STRING_ELT(r_names, 1, mkChar("column"));
  SET_STRING_ELT(r_names, 2, mkChar("message"));
  SET_NAMES(r_problem, r_names);
  
  UNPROTECT(2);
  return r_problem;
}

static SEXP
rsbml_problems(SBMLDocument_t *doc)
{
  SEXP r_problems, r_warnings, r_errors, r_fatals, r_names;
  int i;
  
  PROTECT(r_problems = NEW_LIST(3));
  r_warnings = NEW_LIST(SBMLDocument_getNumWarnings(doc));
  SET_VECTOR_ELT(r_problems, 0, r_warnings);
  r_errors = NEW_LIST(SBMLDocument_getNumErrors(doc));
  SET_VECTOR_ELT(r_problems, 1, r_errors);
  r_fatals = NEW_LIST(SBMLDocument_getNumFatals(doc));
  SET_VECTOR_ELT(r_problems, 2, r_fatals);
  
  PROTECT(r_names = NEW_CHARACTER(3));
  SET_STRING_ELT(r_names, 0, mkChar("warnings"));
  SET_STRING_ELT(r_names, 1, mkChar("errors"));
  SET_STRING_ELT(r_names, 2, mkChar("fatals"));
  SET_NAMES(r_problems, r_names);
  UNPROTECT(1);
  
  for (i = 0; i < SBMLDocument_getNumWarnings(doc); i++)
    SET_VECTOR_ELT(r_warnings, i, rsbml_problem(SBMLDocument_getWarning(doc, i)));
  for (i = 0; i < SBMLDocument_getNumErrors(doc); i++)
    SET_VECTOR_ELT(r_errors, i, rsbml_problem(SBMLDocument_getError(doc, i)));
  for (i = 0; i < SBMLDocument_getNumFatals(doc); i++)
    SET_VECTOR_ELT(r_fatals, i, rsbml_problem(SBMLDocument_getFatal(doc, i)));

  UNPROTECT(1);
  return r_problems;
}

SEXP
rsbml_R_problems(SEXP r_doc)
{
  SBMLDocument_t *doc = R_ExternalPtrAddr(r_doc);
  return rsbml_problems(doc);
}

static Rboolean
rsbml_check_doc(SBMLDocument_t *doc)
{
  SBMLDocument_checkConsistency(doc);
  return !SBMLDocument_getNumWarnings(doc) && !SBMLDocument_getNumErrors(doc) &&
    !SBMLDocument_getNumFatals(doc);
}

SEXP
rsbml_R_check_doc(SEXP r_doc)
{
  SBMLDocument_t *doc = R_ExternalPtrAddr(r_doc);
  return ScalarLogical(rsbml_check_doc(doc));
}
