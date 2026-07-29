import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure HolonomyInvariantPackage {M : Type u} [TopologicalSpace M]
    (F : FoliationGlobalStructurePackage M) where
  holonomyRepresentation : Type v
  holonomyInvariantDefined : Prop
  leafHolonomyGroup : Prop
  invariantCharacterizes : Prop
  holonomyInfinitesimal : Prop

structure HolonomyInvariantEvidence {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (H : HolonomyInvariantPackage F) where
  holonomyInvariantDefinedClosed : H.holonomyInvariantDefined
  leafHolonomyGroupClosed : H.leafHolonomyGroup
  invariantCharacterizesClosed : H.invariantCharacterizes
  holonomyInfinitesimalClosed : H.holonomyInfinitesimal

def HolonomyInvariantClosed {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (H : HolonomyInvariantPackage F) : Prop :=
  H.holonomyInvariantDefined ∧ H.leafHolonomyGroup ∧
  H.invariantCharacterizes ∧ H.holonomyInfinitesimal

theorem holonomy_invariant_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {F : FoliationGlobalStructurePackage M}
    (H : HolonomyInvariantPackage F) (E : HolonomyInvariantEvidence H) :
    HolonomyInvariantClosed H := by
  exact And.intro E.holonomyInvariantDefinedClosed
    (And.intro E.leafHolonomyGroupClosed
      (And.intro E.invariantCharacterizesClosed E.holonomyInfinitesimalClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse