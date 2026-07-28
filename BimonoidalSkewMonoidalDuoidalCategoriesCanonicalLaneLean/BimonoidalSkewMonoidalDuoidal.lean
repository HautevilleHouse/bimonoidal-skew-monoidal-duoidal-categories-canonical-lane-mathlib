import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure BimonoidalSkewMonoidalDuoidalPackage where
  obj : Type u
  monoidal₁ : MonoidalCategory obj
  monoidal₂ : MonoidalCategory obj
  skewDistributivity : Prop
  duoidalCoherence : Prop
  skewDistributivityTerm : skewDistributivity
  duoidalCoherenceTerm : duoidalCoherence

structure BimonoidalSkewMonoidalDuoidalEvidence (P : BimonoidalSkewMonoidalDuoidalPackage) where
  skewDistributivityClosed : P.skewDistributivity
  duoidalCoherenceClosed : P.duoidalCoherence

def BimonoidalSkewMonoidalDuoidalClosed (P : BimonoidalSkewMonoidalDuoidalPackage) : Prop :=
  P.skewDistributivity ∧ P.duoidalCoherence

theorem bimonoidal_skew_monoidal_duoidal_closed_from_evidence
    (P : BimonoidalSkewMonoidalDuoidalPackage) (E : BimonoidalSkewMonoidalDuoidalEvidence P) :
    BimonoidalSkewMonoidalDuoidalClosed P := by
  exact And.intro E.skewDistributivityClosed E.duoidalCoherenceClosed

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse