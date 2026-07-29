import canonicalLaneMathlib.AdmissibleClass
import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsAdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FoliationsAdmittedObject.conclusion A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  by
    exact A.object.conclusion

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse