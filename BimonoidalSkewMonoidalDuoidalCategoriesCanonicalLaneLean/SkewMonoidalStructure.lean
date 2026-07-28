import BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure SkewMonoidalStructurePackage where
  category : Type u
  tensorProduct : category → category → category
  unit : category
  skewAssociator : Prop
  leftUnitor : Prop
  rightUnitor : Prop
  pentagon : Prop
  triangle : Prop
  skewCoherence : Prop

structure SkewMonoidalStructureEvidence (S : SkewMonoidalStructurePackage) where
  skewAssociatorClosed : S.skewAssociator
  leftUnitorClosed : S.leftUnitor
  rightUnitorClosed : S.rightUnitor
  pentagonClosed : S.pentagon
  triangleClosed : S.triangle
  skewCoherenceClosed : S.skewCoherence

def SkewMonoidalStructureClosed (S : SkewMonoidalStructurePackage) : Prop :=
  S.skewAssociator ∧ S.leftUnitor ∧ S.rightUnitor ∧ S.pentagon ∧ S.triangle ∧ S.skewCoherence

theorem skew_monoidal_structure_closed_from_evidence (S : SkewMonoidalStructurePackage) (E : SkewMonoidalStructureEvidence S) : SkewMonoidalStructureClosed S :=
  And.intro E.skewAssociatorClosed
    (And.intro E.leftUnitorClosed
      (And.intro E.rightUnitorClosed
        (And.intro E.pentagonClosed
          (And.intro E.triangleClosed E.skewCoherenceClosed)))

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse