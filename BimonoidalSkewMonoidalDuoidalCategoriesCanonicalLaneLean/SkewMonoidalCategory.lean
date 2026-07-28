import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure SkewMonoidalCategory where
  obj : Type u
  tensor : obj → obj → obj
  unit : obj
  associator : (x y z : obj) → tensor (tensor x y) z → tensor x (tensor y z)
  leftUnitor : (x : obj) → tensor unit x → x
  rightUnitor : (x : obj) → tensor x unit → x
  skewAssociativity : Prop
  skewUnitConditions : Prop

def SkewMonoidalCategoryClosed (S : SkewMonoidalCategory) : Prop :=
  S.skewAssociativity ∧ S.skewUnitConditions

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse