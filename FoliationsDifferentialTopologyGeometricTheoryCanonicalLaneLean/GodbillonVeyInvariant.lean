import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure GodbillonVeyInvariantPackage (F : FoliationPackage) where
  secondaryCharacteristicClass : Type
  threeForm : Type
  closedness : Prop
  cohomologyClassNonzero : Prop
  invariantConclusion : Prop

structure GodbillonVeyInvariantEvidence {F : FoliationPackage} (G : GodbillonVeyInvariantPackage F) where
  closednessClosed : G.closedness
  cohomologyClassNonzeroClosed : G.cohomologyClassNonzero
  invariantConclusionClosed : G.invariantConclusion

def GodbillonVeyInvariantClosed {F : FoliationPackage} (G : GodbillonVeyInvariantPackage F) : Prop :=
  G.closedness ∧ G.cohomologyClassNonzero ∧ G.invariantConclusion

theorem godbillon_vey_invariant_closed_from_evidence {F : FoliationPackage} (G : GodbillonVeyInvariantPackage F)
    (E : GodbillonVeyInvariantEvidence G) : GodbillonVeyInvariantClosed G := by
  exact And.intro E.closednessClosed (And.intro E.cohomologyClassNonzeroClosed E.invariantConclusionClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse