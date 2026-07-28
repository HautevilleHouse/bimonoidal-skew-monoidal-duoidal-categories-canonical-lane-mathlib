import BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure BimonoidalStructurePackage where
  category : Type u
  tensorProduct1 : category → category → category
  unit1 : category
  associator1 : Prop
  leftUnitor1 : Prop
  rightUnitor1 : Prop
  pentagon1 : Prop
  triangle1 : Prop
  tensorProduct2 : category → category → category
  unit2 : category
  associator2 : Prop
  leftUnitor2 : Prop
  rightUnitor2 : Prop
  pentagon2 : Prop
  triangle2 : Prop
  distributivity : Prop

structure BimonoidalStructureEvidence (P : BimonoidalStructurePackage) where
  associator1Closed : P.associator1
  leftUnitor1Closed : P.leftUnitor1
  rightUnitor1Closed : P.rightUnitor1
  pentagon1Closed : P.pentagon1
  triangle1Closed : P.triangle1
  associator2Closed : P.associator2
  leftUnitor2Closed : P.leftUnitor2
  rightUnitor2Closed : P.rightUnitor2
  pentagon2Closed : P.pentagon2
  triangle2Closed : P.triangle2
  distributivityClosed : P.distributivity

def BimonoidalStructureClosed (P : BimonoidalStructurePackage) : Prop :=
  P.associator1 ∧ P.leftUnitor1 ∧ P.rightUnitor1 ∧ P.pentagon1 ∧ P.triangle1 ∧
  P.associator2 ∧ P.leftUnitor2 ∧ P.rightUnitor2 ∧ P.pentagon2 ∧ P.triangle2 ∧
  P.distributivity

theorem bimonoidal_structure_closed_from_evidence (P : BimonoidalStructurePackage) (E : BimonoidalStructureEvidence P) : BimonoidalStructureClosed P :=
  And.intro E.associator1Closed
    (And.intro E.leftUnitor1Closed
      (And.intro E.rightUnitor1Closed
        (And.intro E.pentagon1Closed
          (And.intro E.triangle1Closed
            (And.intro E.associator2Closed
              (And.intro E.leftUnitor2Closed
                (And.intro E.rightUnitor2Closed
                  (And.intro E.pentagon2Closed
                    (And.intro E.triangle2Closed E.distributivityClosed)))))))))

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse