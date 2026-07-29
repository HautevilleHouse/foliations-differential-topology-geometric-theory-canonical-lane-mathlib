import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure HaefligerStructurePackage where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  haefligerGroupoid : Type v
  continuousHaefligerCocycle : Prop
  homotopyLiftingProperty : Prop
  classifyingSpace : Type w
  classifyingMap : baseSpace → classifyingSpace

structure HaefligerStructureEvidence (H : HaefligerStructurePackage) where
  continuousHaefligerCocycleClosed : H.continuousHaefligerCocycle
  homotopyLiftingPropertyClosed : H.homotopyLiftingProperty

def HaefligerStructureClosed (H : HaefligerStructurePackage) : Prop :=
  H.continuousHaefligerCocycle ∧ H.homotopyLiftingProperty

theorem haefliger_structure_closed_from_evidence (H : HaefligerStructurePackage) (E : HaefligerStructureEvidence H) : HaefligerStructureClosed H := by
  exact And.intro E.continuousHaefligerCocycleClosed E.homotopyLiftingPropertyClosed

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse