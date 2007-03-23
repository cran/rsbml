#include <Rinternals.h>
#include <Rdefines.h>

#include <SBMLTypes.h>

// Layout stuff
#ifdef USE_LAYOUT
#include <layout/BoundingBox.h>
#include <layout/SpeciesGlyph.h>
#include <layout/CompartmentGlyph.h>
#include <layout/SpeciesReferenceRole.h>
#include <layout/SpeciesReferenceGlyph.h>
#include <layout/CubicBezier.h>
#include <layout/Curve.h>
#include <layout/TextGlyph.h>
#include <layout/Dimensions.h>
#include <layout/LineSegment.h>
#include <layout/GraphicalObject.h>
#include <layout/Point.h>
#include <layout/Layout.h>
#include <layout/ReactionGlyph.h>
#endif

SEXP rsbml_create_doc_ptr(SBMLDocument_t *doc);

