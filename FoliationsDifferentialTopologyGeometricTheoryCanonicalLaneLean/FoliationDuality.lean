import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure FoliationDualityPackage {M : Type u} [TopologicalSpace M]
    (F : FoliationGlobalStructurePackage M) where
  dualFoliationExists : Prop
  transverseStructuresDual : Prop
  cohomologyDuality : Prop
  leafwiseDuality : Prop

structure FoliationDualityEvidence {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (D : FoliationDualityPackage F) where
  dualFoliationExistsClosed : D.dualFoliationExists
  transverseStructuresDualClosed : D.transverseStructuresDual
  cohomologyDualityClosed : D.cohomologyDuality
  leafwiseDualityClosed : D.leafwiseDuality

def FoliationDualityClosed {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (D : FoliationDualityPackage F) : Prop :=
  D.dualFoliationExists ∧ D.transverseStructuresDual ∧
  D.cohomologyDuality ∧ D.leafwiseDuality

theorem foliation_duality_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {F : FoliationGlobalStructurePackage M}
    (D : FoliationDualityPackage F) (E : FoliationDualityEvidence D) :
    FoliationDualityClosed D := by
  exact And.intro E.dualFoliationExistsClosed
    (And.intro E.transverseStructuresDualClosed
      (And.intro E.cohomologyDualityClosed E.leafwiseDualityClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse