import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure LeafwiseDifferentialOperator (M : FoliatedManifold) where
  leafwiseOrder : ℕ
  symbol : Type u
  principalSymbol : Type v
  ellipticOnLeaf : Prop
  leafwiseIndex : ℤ
  leafwiseCohomologyClass : Prop
  leafwiseAnalyticIndexTheoremHolds : Prop

structure LeafwiseDifferentialOperatorEvidence {M : FoliatedManifold}
    (D : LeafwiseDifferentialOperator M) where
  ellipticOnLeafClosed : D.ellipticOnLeaf
  leafwiseCohomologyClassClosed : D.leafwiseCohomologyClass
  leafwiseAnalyticIndexTheoremHoldsClosed : D.leafwiseAnalyticIndexTheoremHolds

def LeafwiseDifferentialOperatorClosed {M : FoliatedManifold} (D : LeafwiseDifferentialOperator M) : Prop :=
  D.ellipticOnLeaf ∧ D.leafwiseCohomologyClass ∧ D.leafwiseAnalyticIndexTheoremHolds

theorem leafwise_differential_operator_closed_from_evidence {M : FoliatedManifold}
    (D : LeafwiseDifferentialOperator M) (E : LeafwiseDifferentialOperatorEvidence D) :
    LeafwiseDifferentialOperatorClosed D := by
  exact And.intro E.ellipticOnLeafClosed (And.intro E.leafwiseCohomologyClassClosed E.leafwiseAnalyticIndexTheoremHoldsClosed)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse