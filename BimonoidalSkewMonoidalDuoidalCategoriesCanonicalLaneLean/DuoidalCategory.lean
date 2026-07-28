import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.SkewMonoidalCategory

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure DuoidalCategory (S : SkewMonoidalCategory) where
  tensor : S.obj → S.obj → S.obj
  unit : S.obj
  associator : (x y z : S.obj) → tensor (tensor x y) z → tensor x (tensor y z)
  leftUnitor : (x : S.obj) → tensor unit x → x
  rightUnitor : (x : S.obj) → tensor x unit → x
  interchange : (a b c d : S.obj) → tensor (tensor a b) (tensor c d) → tensor (tensor a c) (tensor b d)
  duoidalAxioms : Prop

def DuoidalCategoryClosed (S : SkewMonoidalCategory) (D : DuoidalCategory S) : Prop :=
  D.duoidalAxioms

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse