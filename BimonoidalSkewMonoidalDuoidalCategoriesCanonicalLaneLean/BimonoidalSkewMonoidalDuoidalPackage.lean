import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure BimonoidalSkewMonoidalDuoidalPackage where
  category : Type u
  monoidalProduct : Type v
  skewMonoidalConstraint : Prop
  duoidalInterchange : Prop
  bimonoidalAxioms : Prop
  coherenceConditions : Prop

structure BimonoidalSkewMonoidalDuoidalEvidence (P : BimonoidalSkewMonoidalDuoidalPackage) where
  skewMonoidalConstraintClosed : P.skewMonoidalConstraint
  duoidalInterchangeClosed : P.duoidalInterchange
  bimonoidalAxiomsClosed : P.bimonoidalAxioms
  coherenceConditionsClosed : P.coherenceConditions

def BimonoidalSkewMonoidalDuoidalClosed (P : BimonoidalSkewMonoidalDuoidalPackage) : Prop :=
  P.skewMonoidalConstraint ∧ P.duoidalInterchange ∧ P.bimonoidalAxioms ∧ P.coherenceConditions

theorem bimonoidal_skew_monoidal_duoidal_closed_from_evidence
    (P : BimonoidalSkewMonoidalDuoidalPackage) (E : BimonoidalSkewMonoidalDuoidalEvidence P) :
    BimonoidalSkewMonoidalDuoidalClosed P := by
  exact And.intro E.skewMonoidalConstraintClosed
    (And.intro E.duoidalInterchangeClosed
      (And.intro E.bimonoidalAxiomsClosed E.coherenceConditionsClosed))

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse