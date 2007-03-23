#include "rsbml.h"

static SBMLReader_t *
rsbml_create_sbml_reader(Rboolean validate)
{
  SBMLReader_t *reader = SBMLReader_create();
  if (validate)
    SBMLReader_setSchemaValidationLevel(reader, XML_SCHEMA_VALIDATION_BASIC);
  return reader;
}

static SBMLDocument_t *
rsbml_read_doc(const char *filename, Rboolean validate)
{
  SBMLReader_t *reader = rsbml_create_sbml_reader(validate);
  SBMLDocument_t *doc = SBMLReader_readSBML(reader, filename);
  return doc;
}
static SBMLDocument_t *
rsbml_read_doc_from_string(const char *xml, Rboolean validate)
{
  SBMLReader_t *reader = rsbml_create_sbml_reader(validate);
  SBMLDocument_t *doc = SBMLReader_readSBMLFromString(reader, xml);
  return doc;
}

SEXP
rsbml_R_read_doc(SEXP r_filename, SEXP r_validate)
{
  Rboolean validate = LOGICAL(r_validate)[0];
  const char *filename = CHAR(STRING_ELT(r_filename, 0));
  SBMLDocument_t *doc = rsbml_read_doc(filename, validate);
  return rsbml_create_doc_ptr(doc);
}

SEXP
rsbml_R_read_doc_from_string(SEXP r_xml, SEXP r_validate)
{
  Rboolean validate = LOGICAL(r_validate)[0];
  const char *xml = CHAR(STRING_ELT(r_xml, 0));
  SBMLDocument_t *doc = rsbml_read_doc_from_string(xml, validate);
  return rsbml_create_doc_ptr(doc);
}

static SBMLWriter_t *
rsbml_create_sbml_writer()
{
  SBMLWriter_t *writer = SBMLWriter_create();
  SBMLWriter_setProgramName(writer, "rsbml");
  SBMLWriter_setProgramVersion(writer, "0.1");
  return writer;
}

static void
rsbml_write_doc(SBMLDocument_t *doc, const char *filename)
{
  SBMLWriter_t *writer = rsbml_create_sbml_writer();
  SBMLWriter_writeSBML(writer, doc, filename);
}

static char *
rsbml_write_doc_to_string(SBMLDocument_t *doc) {
  SBMLWriter_t *writer = rsbml_create_sbml_writer();
  return SBMLWriter_writeSBMLToString(writer, doc);
}

SEXP
rsbml_R_write_doc(SEXP r_doc, SEXP r_filename)
{
  const char *filename = CHAR(STRING_ELT(r_filename, 0));
  SBMLDocument_t *doc = R_ExternalPtrAddr(r_doc);
  rsbml_write_doc(doc, filename);
  return R_NilValue;
}

SEXP
rsbml_R_write_doc_to_string(SEXP r_doc)
{
  SBMLDocument_t *doc = R_ExternalPtrAddr(r_doc);
  char *sbml = rsbml_write_doc_to_string(doc);
  SEXP r_sbml = R_NilValue;
  if (sbml) {
     r_sbml = mkString(sbml);
     free(sbml);
  }
  return r_sbml;
}

