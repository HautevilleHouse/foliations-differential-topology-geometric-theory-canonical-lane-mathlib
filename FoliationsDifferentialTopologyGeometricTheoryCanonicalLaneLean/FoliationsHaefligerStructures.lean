import canonicalLaneMathlib.AdmissibleClass
import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsAdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure HaefligerStructurePackage where
  codimension : ℕ
  haefligerCocycle : Type u
  integrabilityObstruction : Prop
  classificationTheorem : Prop

structure HaefligerStructureEvidence (H : HaefligerStructurePackage) where
  integrabilityObstructionClosed : H.integrabilityObstruction
  classificationTheoremClosed : H.classificationTheorem

def HaefligerStructureClosed (H : HaefligerStructurePackage) : Prop :=
  H.integrabilityObstruction ∧ H.classificationTheorem

theorem haefliger_structure_closed_from_evidence (H : HaefligerStructurePackage)
    (E : HaefligerStructureEvidence H) : HaefligerStructureClosed H :=
  by
    exact And.intro E.integrabilityObstructionClosed E.classificationTheoremClosed

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse