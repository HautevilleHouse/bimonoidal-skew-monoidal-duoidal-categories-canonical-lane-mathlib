import BimonoidalSkewMonoidalDuoidalBridgeLemmas

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

def ConstrainedBimonoidalSkewMonoidalDuoidalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bimonoidal_skew_monoidal_duoidal_endgame (A : AdmissibleClass) :
    ConstrainedBimonoidalSkewMonoidalDuoidalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse