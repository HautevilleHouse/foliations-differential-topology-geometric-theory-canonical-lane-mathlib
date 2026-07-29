import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure LeavesPackage where
  leafDimension : Nat
  leafImmersedSubmanifold : Prop
  leafFoliationCompatibility : Prop
  holonomyPseudogroup : Type u
  holonomyAction : Prop

structure LeavesEvidence (L : LeavesPackage) where
  leafDimensionClosed : L.leafDimension = 1 ∨ L.leafDimension = 2 ∨ L.leafDimension = 3
  leafImmersedSubmanifoldClosed : L.leafImmersedSubmanifold
  leafFoliationCompatibilityClosed : L.leafFoliationCompatibility
  holonomyActionClosed : L.holonomyAction

def LeavesClosed (L : LeavesPackage) : Prop :=
  (L.leafDimension = 1 ∨ L.leafDimension = 2 ∨ L.leafDimension = 3) ∧
  L.leafImmersedSubmanifold ∧
  L.leafFoliationCompatibility ∧
  L.holonomyAction

theorem leaves_closed_from_evidence (L : LeavesPackage) (E : LeavesEvidence L) : LeavesClosed L := by
  exact And.intro E.leafDimensionClosed
    (And.intro E.leafImmersedSubmanifoldClosed
      (And.intro E.leafFoliationCompatibilityClosed E.holonomyActionClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse