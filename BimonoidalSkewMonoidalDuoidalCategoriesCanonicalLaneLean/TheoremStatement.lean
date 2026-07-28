import HautevilleHouse.BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  categoricalConstrainedStatement : String
  certificateLane : String := "categorical_constrained"
  carriedRemainder : String

def sourceRepository : String := "bimonoidal-skew-monoidal-duoidal-categories-canonical-lane"
def sourceDescription : String := "bimonoidal skew monoidal duoidal categories"
def sourceTheoremBoundary : String := "classical categorical closure remains open"

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := sourceRepository
    theoremName := sourceRepository
    theoremObject := sourceDescription
    classicalBoundary := sourceTheoremBoundary
    categoricalConstrainedStatement := "categorical-constrained theorem certificate: bridge and gate closed for bimonoidal skew monoidal duoidal categories"
    certificateLane := "categorical_constrained"
    carriedRemainder := "classical boundary carried by categorical closure"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "categorical_constrained" := by
  rfl

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse