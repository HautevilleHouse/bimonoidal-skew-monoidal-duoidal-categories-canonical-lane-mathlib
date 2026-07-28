import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.BimonoidalCategory

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure AdmissibleClass where
  skewCat : SkewMonoidalCategory
  duoiCat : DuoidalCategory skewCat
  bimonCat : BimonoidalCategory skewCat duoiCat
  endPointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endPointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (SkewMonoidalCategoryClosed A.skewCat ∧
   DuoidalCategoryClosed A.skewCat A.duoiCat ∧
   BimonoidalCategoryClosed A.skewCat A.duoiCat A.bimonCat) ∧
  (A.endPointSatisfied ∨ A.remainderRecorded)

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse