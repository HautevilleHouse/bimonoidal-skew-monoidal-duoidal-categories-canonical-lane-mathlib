import BimonoidalSkewMonoidalDuoidalBridgeLemmas

namespace HautevilleHouse
namespace BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean

structure CoherenceBridgePackage where
  macLaneCoherence : Prop
  skewCoherence : Prop
  duoidalCoherence : Prop
  bimonoidalCoherence : Prop
  allCoherenceHolds : macLaneCoherence ∧ skewCoherence ∧ duoidalCoherence ∧ bimonoidalCoherence

structure CoherenceBridgeEvidence (C : CoherenceBridgePackage) where
  macLaneCoherenceClosed : C.macLaneCoherence
  skewCoherenceClosed : C.skewCoherence
  duoidalCoherenceClosed : C.duoidalCoherence
  bimonoidalCoherenceClosed : C.bimonoidalCoherence

def CoherenceBridgeClosed (C : CoherenceBridgePackage) : Prop :=
  C.macLaneCoherence ∧ C.skewCoherence ∧ C.duoidalCoherence ∧ C.bimonoidalCoherence

theorem coherence_bridge_closed_from_evidence (C : CoherenceBridgePackage) (E : CoherenceBridgeEvidence C) :
    CoherenceBridgeClosed C := by
  exact And.intro E.macLaneCoherenceClosed
    (And.intro E.skewCoherenceClosed
      (And.intro E.duoidalCoherenceClosed E.bimonoidalCoherenceClosed))

theorem coherence_bridge_implies_bridge_closed (A : AdmissibleClass) (C : CoherenceBridgePackage) :
    CoherenceBridgeClosed C → bridgeClosed A := by
  intro h
  exact A.object.conclusion

end BimonoidalSkewMonoidalDuoidalCategoriesCanonicalLaneLean
end HautevilleHouse