import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure ReebStabilityPackage (F : FoliationPackage) where
  closedLeaf : Set (F.manifold)
  leafCompact : Prop
  fundamentalGroupFinite : Prop
  stabilityConclusion : Prop

structure ReebStabilityEvidence {F : FoliationPackage} (R : ReebStabilityPackage F) where
  leafCompactClosed : R.leafCompact
  fundamentalGroupFiniteClosed : R.fundamentalGroupFinite
  stabilityConclusionClosed : R.stabilityConclusion

def ReebStabilityClosed {F : FoliationPackage} (R : ReebStabilityPackage F) : Prop :=
  R.leafCompact ∧ R.fundamentalGroupFinite ∧ R.stabilityConclusion

theorem reeb_stability_closed_from_evidence {F : FoliationPackage} (R : ReebStabilityPackage F)
    (E : ReebStabilityEvidence R) : ReebStabilityClosed R := by
  exact And.intro E.leafCompactClosed (And.intro E.fundamentalGroupFiniteClosed E.stabilityConclusionClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse