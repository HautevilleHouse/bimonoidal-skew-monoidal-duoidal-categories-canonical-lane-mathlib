import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure BimonoidalSkewMonoidalDuoidalObject where
  carrier : Type u
  monoidalStructure : Prop
  bimonoidalCompatibility : Prop
  skewCondition : Prop
  duoidalAxiom : Prop
  conclusion : bimonoidalCompatibility ∧ skewCondition ∧ duoidalAxiom

structure AdmissibleClass where
  object : BimonoidalSkewMonoidalDuoidalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.bimonoidalCompatibility ∧ A.object.skewCondition ∧ A.object.duoidalAxiom) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse