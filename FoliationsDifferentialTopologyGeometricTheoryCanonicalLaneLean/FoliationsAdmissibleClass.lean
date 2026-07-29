import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure FoliationsAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  foliation : Type v
  codimension : ℕ
  leaves : Set (Set manifold)
  leafwiseSmooth : Prop
  transverseStructure : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : FoliationsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (FoliationsAdmittedObject.conclusion A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse