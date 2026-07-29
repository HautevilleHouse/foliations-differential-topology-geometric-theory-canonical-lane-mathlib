import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure FoliationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  leaves : Set (Set manifold)
  foliationSmooth : Prop
  leafDimension : Nat
  codimension : Nat
  integrableTangentDistribution : Prop

structure FoliationEvidence (F : FoliationPackage) where
  foliationSmoothClosed : F.foliationSmooth
  leafDimensionClosed : F.leafDimension = 1 ∨ F.leafDimension = 2
  integrableTangentDistributionClosed : F.integrableTangentDistribution

def FoliationClosed (F : FoliationPackage) : Prop :=
  F.foliationSmooth ∧ (F.leafDimension = 1 ∨ F.leafDimension = 2) ∧ F.integrableTangentDistribution

theorem foliation_closed_from_evidence (F : FoliationPackage) (E : FoliationEvidence F) :
    FoliationClosed F := by
  exact And.intro E.foliationSmoothClosed (And.intro E.leafDimensionClosed E.integrableTangentDistributionClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse