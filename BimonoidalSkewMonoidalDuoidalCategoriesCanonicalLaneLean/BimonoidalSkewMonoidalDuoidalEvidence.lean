import BimonoidalSkewMonoidalDuoidalPackage

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure CoherentBimonoidalEvidence {P : BimonoidalSkewMonoidalDuoidalPackage}
    (E : BimonoidalSkewMonoidalDuoidalEvidence P) where
  skewCoherence : Prop
  duoidalCoherence : Prop
  bimonoidalCoherence : Prop
  skewCoherenceClosed : skewCoherence
  duoidalCoherenceClosed : duoidalCoherence
  bimonoidalCoherenceClosed : bimonoidalCoherence

def CoherentEvidenceClosed {P : BimonoidalSkewMonoidalDuoidalPackage}
    {E : BimonoidalSkewMonoidalDuoidalEvidence P} (C : CoherentBimonoidalEvidence E) : Prop :=
  C.skewCoherence ∧ C.duoidalCoherence ∧ C.bimonoidalCoherence

theorem coherent_evidence_closed_from_evidence {P : BimonoidalSkewMonoidalDuoidalPackage}
    {E : BimonoidalSkewMonoidalDuoidalEvidence P} (C : CoherentBimonoidalEvidence E) :
    CoherentEvidenceClosed C := by
  exact And.intro C.skewCoherenceClosed
    (And.intro C.duoidalCoherenceClosed C.bimonoidalCoherenceClosed)

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse