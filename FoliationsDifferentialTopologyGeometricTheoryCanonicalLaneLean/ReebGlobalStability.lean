import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure ReebGlobalStabilityTheorem (M : FoliatedManifold) where
  compactLeafExists : Prop
  fundamentalGroupSurjection : Prop
  leafWiseSimplyConnected : Prop
  foliationTrivial : Prop
  compactLeafExistsTerm : compactLeafExists
  fundamentalGroupSurjectionTerm : fundamentalGroupSurjection
  leafWiseSimplyConnectedTerm : leafWiseSimplyConnected
  foliationTrivialTerm : foliationTrivial

structure ReebGlobalStabilityEvidence {M : FoliatedManifold} (R : ReebGlobalStabilityTheorem M) where
  compactLeafExistsClosed : R.compactLeafExists
  fundamentalGroupSurjectionClosed : R.fundamentalGroupSurjection
  leafWiseSimplyConnectedClosed : R.leafWiseSimplyConnected
  foliationTrivialClosed : R.foliationTrivial

def ReebGlobalStabilityClosed {M : FoliatedManifold} (R : ReebGlobalStabilityTheorem M) : Prop :=
  R.compactLeafExists ∧ R.fundamentalGroupSurjection ∧ R.leafWiseSimplyConnected ∧ R.foliationTrivial

theorem reeb_global_stability_closed_from_evidence {M : FoliatedManifold}
    (R : ReebGlobalStabilityTheorem M) (E : ReebGlobalStabilityEvidence R) :
    ReebGlobalStabilityClosed R := by
  exact And.intro E.compactLeafExistsClosed
    (And.intro E.fundamentalGroupSurjectionClosed
      (And.intro E.leafWiseSimplyConnectedClosed E.foliationTrivialClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse