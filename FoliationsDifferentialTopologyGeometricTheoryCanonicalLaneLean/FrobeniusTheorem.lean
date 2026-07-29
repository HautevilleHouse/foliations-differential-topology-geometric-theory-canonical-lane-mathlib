import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure FrobeniusPackage where
  distribution : Type u
  integrableDistribution : Prop
  involutiveCondition : Prop
  leafFoliation : Prop
  localCoordinates : Type v
  frobeniusIntegrability : Prop

structure FrobeniusEvidence (F : FrobeniusPackage) where
  integrableDistributionClosed : F.integrableDistribution
  involutiveConditionClosed : F.involutiveCondition
  leafFoliationClosed : F.leafFoliation
  frobeniusIntegrabilityClosed : F.frobeniusIntegrability

def FrobeniusClosed (F : FrobeniusPackage) : Prop :=
  F.integrableDistribution ∧ F.involutiveCondition ∧ F.leafFoliation ∧ F.frobeniusIntegrability

theorem frobenius_closed_from_evidence (F : FrobeniusPackage) (E : FrobeniusEvidence F) : FrobeniusClosed F := by
  exact And.intro E.integrableDistributionClosed
    (And.intro E.involutiveConditionClosed
      (And.intro E.leafFoliationClosed E.frobeniusIntegrabilityClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse