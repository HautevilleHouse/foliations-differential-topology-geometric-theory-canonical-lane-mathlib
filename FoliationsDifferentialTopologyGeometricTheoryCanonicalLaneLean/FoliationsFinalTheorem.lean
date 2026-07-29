import canonicalLaneMathlib.AdmissibleClass
import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsAdmissibleClass
import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsBridgeLemmas
import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsGateLemmas

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

def ConstrainedFoliationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_foliations_endgame (A : AdmissibleClass) :
    ConstrainedFoliationsClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse