import canonicalLaneMathlib.AdmissibleClass
import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsAdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure ReebStabilityPackage where
  compactLeaf : Type u
  fundamentalGroupFinite : Prop
  stabilityConclusion : Prop
  neighborhoodProductStructure : Prop

structure ReebStabilityEvidence (R : ReebStabilityPackage) where
  stabilityConclusionClosed : R.stabilityConclusion
  neighborhoodProductStructureClosed : R.neighborhoodProductStructure

def ReebStabilityClosed (R : ReebStabilityPackage) : Prop :=
  R.stabilityConclusion ∧ R.neighborhoodProductStructure

theorem reeb_stability_closed_from_evidence (R : ReebStabilityPackage)
    (E : ReebStabilityEvidence R) : ReebStabilityClosed R :=
  by
    exact And.intro E.stabilityConclusionClosed E.neighborhoodProductStructureClosed

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse