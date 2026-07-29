import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure HolonomyGroupoidPackage where
  sourceManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetManifold : Type v
  targetTopology : TopologicalSpace targetManifold
  holonomyGroupoid : Type w
  groupoidSourceMap : holonomyGroupoid → sourceManifold
  groupoidTargetMap : holonomyGroupoid → targetManifold
  compositionClosed : Prop
  inversesClosed : Prop
  smoothStructure : Prop

structure HolonomyGroupoidEvidence (H : HolonomyGroupoidPackage) where
  compositionClosedClosed : H.compositionClosed
  inversesClosedClosed : H.inversesClosed
  smoothStructureClosed : H.smoothStructure

def HolonomyGroupoidClosed (H : HolonomyGroupoidPackage) : Prop :=
  H.compositionClosed ∧ H.inversesClosed ∧ H.smoothStructure

theorem holonomy_groupoid_closed_from_evidence (H : HolonomyGroupoidPackage) (E : HolonomyGroupoidEvidence H) : HolonomyGroupoidClosed H := by
  exact And.intro E.compositionClosedClosed (And.intro E.inversesClosedClosed E.smoothStructureClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse