import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure HolonomyPseudogroup (M : FoliatedManifold) where
  holonomyGroupoid : Type u
  sourceMap : holonomyGroupoid → M.carrier
  targetMap : holonomyGroupoid → M.carrier
  composition : holonomyGroupoid → holonomyGroupoid → holonomyGroupoid
  identity : M.carrier → holonomyGroupoid
  inverse : holonomyGroupoid → holonomyGroupoid
  groupoidAxioms : Prop
  etaleSmooth : Prop
  holonomyInfinitesimal : Prop

structure HolonomyPseudogroupEvidence {M : FoliatedManifold} (H : HolonomyPseudogroup M) where
  groupoidAxiomsClosed : H.groupoidAxioms
  etaleSmoothClosed : H.etaleSmooth
  holonomyInfinitesimalClosed : H.holonomyInfinitesimal

def HolonomyPseudogroupClosed {M : FoliatedManifold} (H : HolonomyPseudogroup M) : Prop :=
  H.groupoidAxioms ∧ H.etaleSmooth ∧ H.holonomyInfinitesimal

theorem holonomy_pseudogroup_closed_from_evidence {M : FoliatedManifold} (H : HolonomyPseudogroup M)
    (E : HolonomyPseudogroupEvidence H) : HolonomyPseudogroupClosed H := by
  exact And.intro E.groupoidAxiomsClosed (And.intro E.etaleSmoothClosed E.holonomyInfinitesimalClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse