import canonicalLaneMathlib.AdmissibleClass
import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsAdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure TautnessPackage where
  foliationCompact : Type u
  existsTautMetric : Prop
  leafwiseHarmonicForms : Prop
  tautnessDualityResult : Prop

structure TautnessEvidence (T : TautnessPackage) where
  existsTautMetricClosed : T.existsTautMetric
  leafwiseHarmonicFormsClosed : T.leafwiseHarmonicForms
  tautnessDualityResultClosed : T.tautnessDualityResult

def TautnessClosed (T : TautnessPackage) : Prop :=
  T.existsTautMetric ∧ T.leafwiseHarmonicForms ∧ T.tautnessDualityResult

theorem tautness_closed_from_evidence (T : TautnessPackage)
    (E : TautnessEvidence T) : TautnessClosed T :=
  by
    exact And.intro E.existsTautMetricClosed
      (And.intro E.leafwiseHarmonicFormsClosed E.tautnessDualityResultClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse