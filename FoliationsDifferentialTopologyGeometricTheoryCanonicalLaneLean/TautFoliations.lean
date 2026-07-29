import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure TautFoliationsPackage {M : Type u} [TopologicalSpace M]
    (F : FoliationGlobalStructurePackage M) where
  tautCondition : Prop
  transverseMeasure : Type v
  tautnessInvariant : Prop
  foliationMinimalSetEmpty : Prop
  tautAndMinimal : Prop

structure TautFoliationsEvidence {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (T : TautFoliationsPackage F) where
  tautConditionClosed : T.tautCondition
  tautnessInvariantClosed : T.tautnessInvariant
  foliationMinimalSetEmptyClosed : T.foliationMinimalSetEmpty
  tautAndMinimalClosed : T.tautAndMinimal

def TautFoliationsClosed {M : Type u} [TopologicalSpace M]
    {F : FoliationGlobalStructurePackage M} (T : TautFoliationsPackage F) : Prop :=
  T.tautCondition ∧ T.tautnessInvariant ∧
  T.foliationMinimalSetEmpty ∧ T.tautAndMinimal

theorem taut_foliations_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {F : FoliationGlobalStructurePackage M}
    (T : TautFoliationsPackage F) (E : TautFoliationsEvidence T) :
    TautFoliationsClosed T := by
  exact And.intro E.tautConditionClosed
    (And.intro E.tautnessInvariantClosed
      (And.intro E.foliationMinimalSetEmptyClosed E.tautAndMinimalClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse