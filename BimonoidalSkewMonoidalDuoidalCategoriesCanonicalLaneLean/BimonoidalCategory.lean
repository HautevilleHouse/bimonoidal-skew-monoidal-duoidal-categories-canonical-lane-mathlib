import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.DuoidalCategory

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure BimonoidalCategory (S : SkewMonoidalCategory) (D : DuoidalCategory S) where
  comultiplication : S.obj → S.tensor S.obj S.obj
  counit : S.obj → S.unit
  coassociativity : Prop
  counitality : Prop
  compatibility : Prop

def BimonoidalCategoryClosed (S : SkewMonoidalCategory) (D : DuoidalCategory S) (B : BimonoidalCategory S D) : Prop :=
  B.coassociativity ∧ B.counitality ∧ B.compatibility

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse