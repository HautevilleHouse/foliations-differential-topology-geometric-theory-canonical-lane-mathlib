import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure ReebComponentPackage {M : Type u} [TopologicalSpace M]
    (F : FoliationGlobalStructurePackage M) where
  compactLeafExistence : Prop
  leafStability : Prop
  reebComponentDefined : Prop
  localProductStructure : Prop
  leafHolonomyFinite : Prop

structure ReebComponentEvidence {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (R : ReebComponentPackage F) where
  compactLeafExistenceClosed : R.compactLeafExistence
  leafStabilityClosed : R.leafStability
  reebComponentDefinedClosed : R.reebComponentDefined
  localProductStructureClosed : R.localProductStructure
  leafHolonomyFiniteClosed : R.leafHolonomyFinite

def ReebComponentClosed {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (R : ReebComponentPackage F) : Prop :=
  R.compactLeafExistence ∧ R.leafStability ∧
  R.reebComponentDefined ∧ R.localProductStructure ∧
  R.leafHolonomyFinite

theorem reeb_component_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {F : FoliationGlobalStructurePackage M}
    (R : ReebComponentPackage F) (E : ReebComponentEvidence R) :
    ReebComponentClosed R := by
  exact And.intro E.compactLeafExistenceClosed
    (And.intro E.leafStabilityClosed
      (And.intro E.reebComponentDefinedClosed
        (And.intro E.localProductStructureClosed E.leafHolonomyFiniteClosed)))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse