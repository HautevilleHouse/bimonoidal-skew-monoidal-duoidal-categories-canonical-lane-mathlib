import BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.BimonoidalSkewMonoidalDuoidal

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure CoherenceConditionsPackage (P : BimonoidalSkewMonoidalDuoidalPackage) where
  pentagonIdentities₁ : Prop
  unitLaws₁ : Prop
  pentagonIdentities₂ : Prop
  unitLaws₂ : Prop
  distributivityCoherence : Prop
  pentagonIdentities₁Closed : pentagonIdentities₁
  unitLaws₁Closed : unitLaws₁
  pentagonIdentities₂Closed : pentagonIdentities₂
  unitLaws₂Closed : unitLaws₂
  distributivityCoherenceClosed : distributivityCoherence

def CoherenceConditionsClosed (P : BimonoidalSkewMonoidalDuoidalPackage) (C : CoherenceConditionsPackage P) : Prop :=
  C.pentagonIdentities₁ ∧ C.unitLaws₁ ∧ C.pentagonIdentities₂ ∧ C.unitLaws₂ ∧ C.distributivityCoherence

theorem coherence_conditions_closed_from_package
    (P : BimonoidalSkewMonoidalDuoidalPackage) (C : CoherenceConditionsPackage P) :
    CoherenceConditionsClosed P C := by
  exact And.intro C.pentagonIdentities₁Closed
    (And.intro C.unitLaws₁Closed
      (And.intro C.pentagonIdentities₂Closed
        (And.intro C.unitLaws₂Closed C.distributivityCoherenceClosed)))

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse