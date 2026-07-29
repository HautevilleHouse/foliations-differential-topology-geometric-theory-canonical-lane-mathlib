import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure FoliationGlobalStructurePackage (M : Type u) [TopologicalSpace M] where
  foliationCodimension : Nat
  foliationLeaves : Set (Set M)
  leafManifoldStructure : Type v
  leafImmersion : Type w
  hausdorffLeafTopology : Prop
  leafDecompositionCover : Prop
  holonomyGroupoid : Type x

structure FoliationGlobalStructureEvidence {M : Type u} [TopologicalSpace M]
    (F : FoliationGlobalStructurePackage M) where
  hausdorffLeafTopologyClosed : F.hausdorffLeafTopology
  leafDecompositionCoverClosed : F.leafDecompositionCover

def FoliationGlobalStructureClosed {M : Type u} [TopologicalSpace M]
    (F : FoliationGlobalStructurePackage M) : Prop :=
  F.hausdorffLeafTopology ∧ F.leafDecompositionCover

theorem foliation_global_structure_closed_from_evidence
    {M : Type u} [TopologicalSpace M]
    (F : FoliationGlobalStructurePackage M) (E : FoliationGlobalStructureEvidence F) :
    FoliationGlobalStructureClosed F := by
  exact And.intro E.hausdorffLeafTopologyClosed E.leafDecompositionCoverClosed

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse