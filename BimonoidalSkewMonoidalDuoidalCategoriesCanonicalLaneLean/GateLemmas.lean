import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endPointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse