import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure FoliatedManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  leafDimension : ℕ
  leaf : carrier → Set carrier
  leafSmoothSubmanifold : ∀ x : carrier, Prop
  foliationCodimension : ℕ
  plaque : carrier → Set carrier
  foliationAtlas : Type v
  foliationAtlasCompatible : Prop
  leafDimensionTerm : leafDimension = 1 ∨ leafDimension = 2 ∨ leafDimension = 3

structure FoliatedManifoldEvidence (M : FoliatedManifold) where
  smoothStructureClosed : M.smoothStructure
  leafSmoothSubmanifoldClosed : ∀ x : M.carrier, M.leafSmoothSubmanifold x
  foliationAtlasCompatibleClosed : M.foliationAtlasCompatible

def FoliatedManifoldClosed (M : FoliatedManifold) : Prop :=
  M.smoothStructure ∧ (∀ x : M.carrier, M.leafSmoothSubmanifold x) ∧ M.foliationAtlasCompatible

theorem foliated_manifold_closed_from_evidence (M : FoliatedManifold) (E : FoliatedManifoldEvidence M) :
    FoliatedManifoldClosed M := by
  exact And.intro E.smoothStructureClosed (And.intro E.leafSmoothSubmanifoldClosed E.foliationAtlasCompatibleClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse