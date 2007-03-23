#include "rsbml.h"

#define STRING(x) \
({ \
    char *string = CHAR(STRING_ELT(x, 0)); \
    &string; \
})
#define EXPRESSION(x) \
({ \
    ASTNode_t *node = SBML_parseFormula(STRING(coerceVector(x, STRSXP))[0]); \
    &node; \
})
#define UNIT_KIND(x) \
({ \
    UnitKind_t kind = UnitKind_forName(STRING(x)[0]); \
    &kind; \
})
#define RULE_TYPE(x) \
({ \
    RuleType_t type = RuleType_forName(STRING(x)[0]); \
    &type; \
})

#define ADD_LIST(class, var, Child, child, func) \
({ \
    int i; \
    SEXP list = GET_SLOT(r_ ## var, install(#child)); \
    for (i = 0; i < GET_LENGTH(list); i++) \
      class ## _add ## Child(var, rsbml_build_doc_ ## func(VECTOR_ELT(list, i))); \
})

#define SET_ATTR(Class, var, Name, name, converter) \
({ \
    SEXP r_ ## name = GET_SLOT(r_ ## var, install(#name)); \
    if (GET_LENGTH(r_ ## name)) \
      Class ## _set ## Name((Class ## _t *)var, converter(r_ ## name)[0]); \
})

static void
rsbml_build_doc_s_base(SBase_t *s_base, SEXP r_s_base)
{
  SET_ATTR(SBase, s_base, MetaId, metaId, STRING);
  SET_ATTR(SBase, s_base, Notes, notes, STRING);
  SET_ATTR(SBase, s_base, Annotation, annotation, STRING);
}

static Species_t *
rsbml_build_doc_species(SEXP r_species)
{
  Species_t * species;
  
  species = Species_create();
  
  rsbml_build_doc_s_base((SBase_t *)species, r_species);
  
  SET_ATTR(Species, species, Id, id, STRING);
  SET_ATTR(Species, species, Name, name, STRING);
  SET_ATTR(Species, species, InitialConcentration, initialConcentration, REAL);
  SET_ATTR(Species, species, InitialAmount, initialAmount, REAL);
  SET_ATTR(Species, species, SubstanceUnits, substanceUnits, STRING);
  SET_ATTR(Species, species, SpatialSizeUnits, spatialSizeUnits, STRING);
  SET_ATTR(Species, species, Units, units, STRING);
  SET_ATTR(Species, species, HasOnlySubstanceUnits, hasOnlySubstanceUnits, LOGICAL);
  SET_ATTR(Species, species, BoundaryCondition, boundaryCondition, LOGICAL);
  SET_ATTR(Species, species, Charge, charge, INTEGER);
  SET_ATTR(Species, species, Constant, constant, LOGICAL);
  
  return species;
}

static FunctionDefinition_t *
rsbml_build_doc_function_definition(SEXP r_function_definition)
{
  FunctionDefinition_t * function_definition;
  
  function_definition = FunctionDefinition_create();
  
  rsbml_build_doc_s_base((SBase_t *)function_definition, r_function_definition);
  
  SET_ATTR(FunctionDefinition, function_definition, Id, id, STRING);
  SET_ATTR(FunctionDefinition, function_definition, Name, name, STRING);
  SET_ATTR(FunctionDefinition, function_definition, Math, math, EXPRESSION);
  
  return function_definition;
}

static Unit_t *
rsbml_build_doc_unit(SEXP r_unit)
{
  Unit_t * unit;
  
  unit = Unit_create();
  
  rsbml_build_doc_s_base((SBase_t *)unit, r_unit);
  
  SET_ATTR(Unit, unit, Kind, kind, UNIT_KIND);
  SET_ATTR(Unit, unit, Exponent, exponent, INTEGER);
  SET_ATTR(Unit, unit, Scale, scale, INTEGER);
  SET_ATTR(Unit, unit, Multiplier, multiplier, REAL);
  SET_ATTR(Unit, unit, Offset, offset, REAL);
  
  return unit;
}

static UnitDefinition_t *
rsbml_build_doc_unit_definition(SEXP r_unit_definition)
{
  UnitDefinition_t * unit_definition;
  
  unit_definition = UnitDefinition_create();
  
  rsbml_build_doc_s_base((SBase_t *)unit_definition, r_unit_definition);
  
  SET_ATTR(UnitDefinition, unit_definition, Id, id, STRING);
  SET_ATTR(UnitDefinition, unit_definition, Name, name, STRING);
  ADD_LIST(UnitDefinition, unit_definition, Unit, units, unit);
  
  return unit_definition;
}

static Compartment_t *
rsbml_build_doc_compartment(SEXP r_compartment)
{
  Compartment_t * compartment;
  
  compartment = Compartment_create();
  
  rsbml_build_doc_s_base((SBase_t *)compartment, r_compartment);
  
  SET_ATTR(Compartment, compartment, Id, id, STRING);
  SET_ATTR(Compartment, compartment, Name, name, STRING);
  SET_ATTR(Compartment, compartment, SpatialDimensions, spatialDimensions, INTEGER);
  SET_ATTR(Compartment, compartment, Size, size, REAL);
  SET_ATTR(Compartment, compartment, Units, units, STRING);
  SET_ATTR(Compartment, compartment, Outside, outside, STRING);
  SET_ATTR(Compartment, compartment, Constant, constant, LOGICAL);
  
  return compartment;
}

static Parameter_t *
rsbml_build_doc_parameter(SEXP r_parameter)
{
  Parameter_t * parameter;
  
  parameter = Parameter_create();
  
  rsbml_build_doc_s_base((SBase_t *)parameter, r_parameter);
  
  SET_ATTR(Parameter, parameter, Id, id, STRING);
  SET_ATTR(Parameter, parameter, Name, name, STRING);
  SET_ATTR(Parameter, parameter, Value, value, REAL);
  SET_ATTR(Parameter, parameter, Units, units, STRING);
  SET_ATTR(Parameter, parameter, Constant, constant, LOGICAL);
  
  return parameter;
}

static KineticLaw_t *
rsbml_build_doc_kinetic_law(SEXP r_kinetic_law)
{
  KineticLaw_t * kinetic_law;
  
  kinetic_law = KineticLaw_create();
  
  rsbml_build_doc_s_base((SBase_t *)kinetic_law, r_kinetic_law);
  
  SET_ATTR(KineticLaw, kinetic_law, Math, math, EXPRESSION);
  ADD_LIST(KineticLaw, kinetic_law, Parameter, parameters, parameter);
  SET_ATTR(KineticLaw, kinetic_law, TimeUnits, timeUnits, STRING);
  SET_ATTR(KineticLaw, kinetic_law, SubstanceUnits, substanceUnits, STRING);
  
  return kinetic_law;
}

static void
rsbml_build_doc_simple_species_reference(SimpleSpeciesReference_t *simple_species_reference,
  SEXP r_simple_species_reference)
{
  rsbml_build_doc_s_base((SBase_t *)simple_species_reference, r_simple_species_reference);
  #ifdef USE_LAYOUT
  SET_ATTR(SimpleSpeciesReference, simple_species_reference, Id, id, STRING);
  #endif
  SET_ATTR(SimpleSpeciesReference, simple_species_reference, Species, species, STRING);
}

static SpeciesReference_t *
rsbml_build_doc_species_reference(SEXP r_species_reference)
{
  SpeciesReference_t * species_reference;
  
  
  species_reference = SpeciesReference_create();
  
  rsbml_build_doc_simple_species_reference((SimpleSpeciesReference_t *)species_reference,
    r_species_reference);
  
  SET_ATTR(SpeciesReference, species_reference, Stoichiometry, stoichiometry, REAL);
 
  {
    SEXP r_stoichiometry_math = GET_SLOT(r_species_reference, install("stoichiometryMath"));
    SpeciesReference_t *stoichiometry_math = species_reference;
    if (GET_LENGTH(r_stoichiometry_math))
      SET_ATTR(SpeciesReference, stoichiometry_math, StoichiometryMath, math, EXPRESSION);
  }

  return species_reference;
}

static ModifierSpeciesReference_t *
rsbml_build_doc_modifier_species_reference(SEXP r_modifier_species_reference)
{
  ModifierSpeciesReference_t * modifier_species_reference;
  
  modifier_species_reference = ModifierSpeciesReference_create();
  
  rsbml_build_doc_simple_species_reference(
    (SimpleSpeciesReference_t *)modifier_species_reference, r_modifier_species_reference);
  
  return modifier_species_reference;
}

static Reaction_t *
rsbml_build_doc_reaction(SEXP r_reaction)
{
  Reaction_t * reaction;
  SEXP kineticLaw = GET_SLOT(r_reaction, install("kineticLaw"));
  
  reaction = Reaction_create();
  
  rsbml_build_doc_s_base((SBase_t *)reaction, r_reaction);
  
  SET_ATTR(Reaction, reaction, Id, id, STRING);
  SET_ATTR(Reaction, reaction, Name, name, STRING);
  ADD_LIST(Reaction, reaction, Reactant, reactants, species_reference);
  ADD_LIST(Reaction, reaction, Product, products, species_reference);
  ADD_LIST(Reaction, reaction, Modifier, modifiers, modifier_species_reference);
  if (GET_LENGTH(kineticLaw))
    Reaction_setKineticLaw(reaction, rsbml_build_doc_kinetic_law(kineticLaw));
  SET_ATTR(Reaction, reaction, Reversible, reversible, LOGICAL);
  SET_ATTR(Reaction, reaction, Fast, fast, LOGICAL);
  
  return reaction;
}

static Rule_t *
rsbml_build_doc_rule(SEXP r_rule)
{
  Rule_t * rule = NULL;
  
  if (inherits(r_rule, "AlgebraicRule"))
    rule = (Rule_t *)AlgebraicRule_create();
  else if (inherits(r_rule, "RateRule")) {
    rule = (Rule_t *)RateRule_create();
    SET_ATTR(RateRule, rule, Variable, variable, STRING);
  } else if (inherits(r_rule, "CompartmentVolumeRule")) {
    rule = (Rule_t *)CompartmentVolumeRule_create();
    SET_ATTR(CompartmentVolumeRule, rule, Compartment, compartment, STRING);
  } else if (inherits(r_rule, "SpeciesConcentrationRule")) {
    rule = (Rule_t *)SpeciesConcentrationRule_create();
    SET_ATTR(SpeciesConcentrationRule, rule, Species, species, STRING);
  } else if (inherits(r_rule, "ParameterRule")) {
    rule = (Rule_t *)ParameterRule_create();
    SET_ATTR(ParameterRule, rule, Name, name, STRING);
    SET_ATTR(ParameterRule, rule, Units, units, STRING);
  } else if (inherits(r_rule, "AssignmentRule")) {
    rule = (Rule_t *)AssignmentRule_create();
    SET_ATTR(AssignmentRule, rule, Variable, variable, STRING);
  } else {
    error("Unknown event type");
  }
  
  if (inherits(r_rule, "AssignmentRule")) {
    SET_ATTR(AssignmentRule, rule, Type, type, RULE_TYPE);
  } 
  
  rsbml_build_doc_s_base((SBase_t *)rule, r_rule);
  
  SET_ATTR(Rule, rule, Math, math, EXPRESSION);
  
  return rule;
}

static EventAssignment_t *
rsbml_build_doc_event_assignment(SEXP r_event_assignment)
{
  EventAssignment_t * event_assignment;
  
  event_assignment = EventAssignment_create();
  
  rsbml_build_doc_s_base((SBase_t *)event_assignment, r_event_assignment);
  
  SET_ATTR(EventAssignment, event_assignment, Variable, variable, STRING);
  SET_ATTR(EventAssignment, event_assignment, Math, math, EXPRESSION);
  
  return event_assignment;
}

static Event_t *
rsbml_build_doc_event(SEXP r_event)
{
  Event_t * event;
  
  event = Event_create();
  
  rsbml_build_doc_s_base((SBase_t *)event, r_event);
  
  SET_ATTR(Event, event, Id, id, STRING);
  SET_ATTR(Event, event, Name, name, STRING);
  SET_ATTR(Event, event, Trigger, trigger, EXPRESSION);
  SET_ATTR(Event, event, Delay, delay, EXPRESSION);
  SET_ATTR(Event, event, TimeUnits, timeUnits, STRING);
  ADD_LIST(Event, event, EventAssignment, eventAssignments, event_assignment);
  
  return event;
}

#ifdef USE_LAYOUT
static Dimensions_t *
rsbml_build_doc_dimensions(SEXP r_dimensions)
{
  Dimensions_t * dimensions;
  
  dimensions = Dimensions_create();
  
  rsbml_build_doc_s_base((SBase_t *)dimensions, r_dimensions);
  
  SET_ATTR(Dimensions, dimensions, Width, width, REAL);
  SET_ATTR(Dimensions, dimensions, Height, height, REAL);
  SET_ATTR(Dimensions, dimensions, Depth, depth, REAL);
  
  return dimensions;
}

static Point_t *
rsbml_build_doc_point(SEXP r_point)
{
  Point_t * point;
  
  point = Point_create();
  
  rsbml_build_doc_s_base((SBase_t *)point, r_point);
  
  SET_ATTR(Point, point, XOffset, x, REAL);
  SET_ATTR(Point, point, YOffset, y, REAL);
  SET_ATTR(Point, point, ZOffset, z, REAL);
  
  return point;
}

static BoundingBox_t *
rsbml_build_doc_bounding_box(SEXP r_bounding_box)
{
  BoundingBox_t * bounding_box;
  
  bounding_box = BoundingBox_create();
  
  rsbml_build_doc_s_base((SBase_t *)bounding_box, r_bounding_box);
  
  SET_ATTR(BoundingBox, bounding_box, Id, id, STRING);
  BoundingBox_setPosition(bounding_box, 
    rsbml_build_doc_point(GET_SLOT(r_bounding_box, install("boundingBox"))));
  BoundingBox_setDimensions(bounding_box, 
    rsbml_build_doc_dimensions(GET_SLOT(r_bounding_box, install("dimensions"))));
  
  return bounding_box;
}

static void
rsbml_build_doc_base_graphical_object(GraphicalObject_t * graphical_object, SEXP r_graphical_object)
{
  SET_ATTR(GraphicalObject, graphical_object, Id, id, STRING);
  GraphicalObject_setBoundingBox(graphical_object,
    rsbml_build_doc_bounding_box(GET_SLOT(r_graphical_object, install("boundingBox"))));
}

static GraphicalObject_t *
rsbml_build_doc_graphical_object(SEXP r_graphical_object)
{
  GraphicalObject_t * graphical_object;
  
  graphical_object = GraphicalObject_create();
  
  rsbml_build_doc_base_graphical_object(graphical_object, r_graphical_object);
  
  return graphical_object;
}

static CompartmentGlyph_t *
rsbml_build_doc_compartment_glyph(SEXP r_compartment_glyph)
{
  CompartmentGlyph_t * compartment_glyph;
  
  compartment_glyph = CompartmentGlyph_create();
  
  rsbml_build_doc_base_graphical_object((GraphicalObject_t *)compartment_glyph, r_compartment_glyph);
  
  SET_ATTR(CompartmentGlyph, compartment_glyph, CompartmentId, compartment, STRING);
  
  return compartment_glyph;
}

static SpeciesGlyph_t *
rsbml_build_doc_species_glyph(SEXP r_species_glyph)
{
  SpeciesGlyph_t * species_glyph;
  
  species_glyph = SpeciesGlyph_create();
  
  rsbml_build_doc_base_graphical_object((GraphicalObject_t *)species_glyph, r_species_glyph);
  
  SET_ATTR(SpeciesGlyph, species_glyph, SpeciesId, species, STRING);
  
  return species_glyph;
}

static LineSegment_t *
rsbml_build_doc_line_segment(SEXP r_line_segment)
{
  LineSegment_t * line_segment;
  
  if (inherits(r_line_segment, "CubicBezier")) {
    line_segment = (LineSegment_t *)CubicBezier_create();
    CubicBezier_setBasePoint1((CubicBezier_t *)line_segment,
      rsbml_build_doc_point(GET_SLOT(r_line_segment, install("basePoint1"))));
    CubicBezier_setBasePoint2((CubicBezier_t *)line_segment,
      rsbml_build_doc_point(GET_SLOT(r_line_segment, install("basePoint2"))));
  } else line_segment = LineSegment_create();
  
  rsbml_build_doc_s_base((SBase_t *)line_segment, r_line_segment);
  
  LineSegment_setStart(line_segment, 
    rsbml_build_doc_point(GET_SLOT(r_line_segment, install("start"))));
  LineSegment_setEnd(line_segment, 
    rsbml_build_doc_point(GET_SLOT(r_line_segment, install("end"))));
  
  return line_segment;
}

static Curve_t *
rsbml_build_doc_curve(SEXP r_curve)
{
  Curve_t * curve;
  
  curve = Curve_create();
  
  rsbml_build_doc_s_base((SBase_t *)curve, r_curve);
  
  ADD_LIST(Curve, curve, CurveSegment, curveSegments, line_segment);
  
  return curve;
}

static SpeciesReferenceGlyph_t *
rsbml_build_doc_species_reference_glyph(SEXP r_species_reference_glyph)
{
  SpeciesReferenceGlyph_t * species_reference_glyph;
  SEXP r_curve = GET_SLOT(r_species_reference_glyph, install("curve"));
  
  species_reference_glyph = SpeciesReferenceGlyph_create();
  
  rsbml_build_doc_base_graphical_object((GraphicalObject_t *)species_reference_glyph, 
    r_species_reference_glyph);
  
  SET_ATTR(SpeciesReferenceGlyph, species_reference_glyph, SpeciesGlyphId, speciesGlyph, STRING);
  SET_ATTR(SpeciesReferenceGlyph, species_reference_glyph, SpeciesReferenceId, speciesReference, STRING);
  // FIXME: SpeciesReferenceGlyph_setRole is not exported
  /*SET_ATTR(SpeciesReferenceGlyph, species_reference_glyph, Role, role, STRING);*/
  if (GET_LENGTH(r_curve))
    SpeciesReferenceGlyph_setCurve(species_reference_glyph, rsbml_build_doc_curve(r_curve));
  
  return species_reference_glyph;
}

static ReactionGlyph_t *
rsbml_build_doc_reaction_glyph(SEXP r_reaction_glyph)
{
  ReactionGlyph_t * reaction_glyph;
  SEXP r_curve = GET_SLOT(r_reaction_glyph, install("curve"));
  
  reaction_glyph = ReactionGlyph_create();
  
  rsbml_build_doc_base_graphical_object((GraphicalObject_t *)reaction_glyph, r_reaction_glyph);
  
  SET_ATTR(ReactionGlyph, reaction_glyph, ReactionId, reaction, STRING);
  if (GET_LENGTH(r_curve))
    ReactionGlyph_setCurve(reaction_glyph, rsbml_build_doc_curve(r_curve));
  ADD_LIST(ReactionGlyph, reaction_glyph, SpeciesReferenceGlyph, 
    speciesReferenceGlyphs, species_reference_glyph);
  
  return reaction_glyph;
}

static TextGlyph_t *
rsbml_build_doc_text_glyph(SEXP r_text_glyph)
{
  TextGlyph_t * text_glyph;
  
  text_glyph = TextGlyph_create();
  
  rsbml_build_doc_base_graphical_object((GraphicalObject_t *)text_glyph, r_text_glyph);
  
  SET_ATTR(TextGlyph, text_glyph, GraphicalObjectId, graphicalObject, STRING);
  SET_ATTR(TextGlyph, text_glyph, Text, text, STRING);
  SET_ATTR(TextGlyph, text_glyph, OriginOfTextId, originOfText, STRING);
  
  return text_glyph;
}

static Layout_t *
rsbml_build_doc_layout(SEXP r_layout)
{
  Layout_t * layout;
  
  layout = Layout_create();
  
  rsbml_build_doc_s_base((SBase_t *)layout, r_layout);
  
  SET_ATTR(Layout, layout, Id, id, STRING);
  // FIXME: libsml is missing Layout_setDimensions()
  /*Layout_setDimensions(layout, 
    rsbml_build_doc_dimensions(GET_SLOT(r_layout, install("dimensions"))));*/
  ADD_LIST(Layout, layout, CompartmentGlyph, compartmentGlyphs, compartment_glyph);
  ADD_LIST(Layout, layout, SpeciesGlyph, speciesGlyphs, species_glyph);
  ADD_LIST(Layout, layout, ReactionGlyph, reactionGlyphs, reaction_glyph);
  ADD_LIST(Layout, layout, TextGlyph, textGlyphs, text_glyph);
  ADD_LIST(Layout, layout, AdditionalGraphicalObject, additionalGraphicalObjects, 
    graphical_object);
  
  return layout;
}
#endif

static Model_t *
rsbml_build_doc_model(SEXP r_model)
{
  Model_t *model = Model_create();
  
  SET_ATTR(Model, model, Id, id, STRING);
  SET_ATTR(Model, model, Name, name, STRING);

  ADD_LIST(Model, model, Species, species, species);
  ADD_LIST(Model, model, FunctionDefinition, functionDefinitions, function_definition);
  ADD_LIST(Model, model, UnitDefinition, unitDefinitions, unit_definition);
  ADD_LIST(Model, model, Compartment, compartments, compartment);
  ADD_LIST(Model, model, Parameter, parameters, parameter);
  ADD_LIST(Model, model, Rule, rules, rule);
  ADD_LIST(Model, model, Reaction, reactions, reaction);
  ADD_LIST(Model, model, Event, events, event);
  #ifdef USE_LAYOUT
  ADD_LIST(Model, model, Layout, layouts, layout);
  #endif
  
  return model;
}

static SBMLDocument_t *
rsbml_build_doc(SEXP r_doc)
{
  SBMLDocument_t *doc;
  
  doc = SBMLDocument_create();
  
  SET_ATTR(SBMLDocument, doc, Level, level, INTEGER);
  SET_ATTR(SBMLDocument, doc, Version, ver, INTEGER);
  
  SBMLDocument_setModel(doc, rsbml_build_doc_model(GET_SLOT(r_doc, install("model"))));
  
  return doc;
}

SEXP
rsbml_R_build_doc(SEXP r_doc)
{
  SBMLDocument_t *doc = rsbml_build_doc(r_doc);
  return rsbml_create_doc_ptr(doc);
}

static void
rsbml_R_free_doc(SEXP r_doc)
{
  SBMLDocument_t *doc = R_ExternalPtrAddr(r_doc);
  SBMLDocument_free(doc);
}

SEXP
rsbml_create_doc_ptr(SBMLDocument_t *doc)
{
  SEXP r_doc, class_vector;
  PROTECT(class_vector = NEW_CHARACTER(1));
  SET_STRING_ELT(class_vector, 0, mkChar("SBMLDocument"));
  r_doc = R_MakeExternalPtr(doc, R_NilValue, R_NilValue);
  R_RegisterCFinalizer(r_doc, (R_CFinalizer_t)rsbml_R_free_doc);
  SET_CLASS(r_doc, class_vector);
  UNPROTECT(1);
  return r_doc;
}
