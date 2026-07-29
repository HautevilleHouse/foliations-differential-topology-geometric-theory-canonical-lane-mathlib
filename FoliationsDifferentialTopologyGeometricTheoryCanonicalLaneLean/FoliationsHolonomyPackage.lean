import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsAdmissibleClass

/-!
# Holonomy Package for Foliations
-/

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure HolonomyPackage where
  leafHolonomy : Prop
  holonomyGroupoid : Prop
  holonomyInvariant : Prop
  haefligerStructure : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  leafHolonomyClosed : H.leafHolonomy
  holonomyGroupoidClosed : H.holonomyGroupoid
  holonomyInvariantClosed : H.holonomyInvariant
  haefligerStructureClosed : H.haefligerStructure

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.leafHolonomy ∧ H.holonomyGroupoid ∧ H.holonomyInvariant ∧ H.haefligerStructure

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.leafHolonomyClosed (And.intro E.holonomyGroupoidClosed (And.intro E.holonomyInvariantClosed E.haefligerStructureClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse