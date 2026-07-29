import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure ThurstonStabilityPackage (F : FoliationPackage) where
  leafwiseSimplyConnected : Prop
  vanishingHolonomy : Prop
  globalTrivialization : Prop
  stabilityConclusion : Prop

structure ThurstonStabilityEvidence {F : FoliationPackage} (T : ThurstonStabilityPackage F) where
  leafwiseSimplyConnectedClosed : T.leafwiseSimplyConnected
  vanishingHolonomyClosed : T.vanishingHolonomy
  globalTrivializationClosed : T.globalTrivialization
  stabilityConclusionClosed : T.stabilityConclusion

def ThurstonStabilityClosed {F : FoliationPackage} (T : ThurstonStabilityPackage F) : Prop :=
  T.leafwiseSimplyConnected ∧ T.vanishingHolonomy ∧ T.globalTrivialization ∧ T.stabilityConclusion

theorem thurston_stability_closed_from_evidence {F : FoliationPackage} (T : ThurstonStabilityPackage F)
    (E : ThurstonStabilityEvidence T) : ThurstonStabilityClosed T := by
  exact And.intro E.leafwiseSimplyConnectedClosed (And.intro E.vanishingHolonomyClosed (And.intro E.globalTrivializationClosed E.stabilityConclusionClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse