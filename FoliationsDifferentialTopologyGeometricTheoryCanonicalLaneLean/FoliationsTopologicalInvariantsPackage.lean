import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsAdmissibleClass

/-!
# Topological Invariants Package for Foliations
-/

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure TopologicalInvariantsPackage where
  godbillonVeyClass : Prop
  secondaryCharacteristicClasses : Prop
  exoticCodimensionOne : Prop
  classificationCodimensionOne : Prop

structure TopologicalInvariantsEvidence (I : TopologicalInvariantsPackage) where
  godbillonVeyClassClosed : I.godbillonVeyClass
  secondaryCharacteristicClassesClosed : I.secondaryCharacteristicClasses
  exoticCodimensionOneClosed : I.exoticCodimensionOne
  classificationCodimensionOneClosed : I.classificationCodimensionOne

def TopologicalInvariantsClosed (I : TopologicalInvariantsPackage) : Prop :=
  I.godbillonVeyClass ∧ I.secondaryCharacteristicClasses ∧ I.exoticCodimensionOne ∧ I.classificationCodimensionOne

theorem topological_invariants_closed_from_evidence (I : TopologicalInvariantsPackage) (E : TopologicalInvariantsEvidence I) :
    TopologicalInvariantsClosed I := by
  exact And.intro E.godbillonVeyClassClosed (And.intro E.secondaryCharacteristicClassesClosed (And.intro E.exoticCodimensionOneClosed E.classificationCodimensionOneClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse