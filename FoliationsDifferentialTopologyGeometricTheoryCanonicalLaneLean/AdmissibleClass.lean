import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : FoliationsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FoliationsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse
