import FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean.FoliationsHolonomyPackage

/-!
# Geometrization Package for Foliations
-/

namespace HautevilleHouse
namespace FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean

structure GeometrizationPackage {H : HolonomyPackage} (h : H) where
  leafSpaceGeometrization : Prop
  riemannianFoliation : Prop
  bundleLikeStructure : Prop
  transverseStructure : Prop

structure GeometrizationEvidence {H : HolonomyPackage} {h : H} (G : GeometrizationPackage h) where
  leafSpaceGeometrizationClosed : G.leafSpaceGeometrization
  riemannianFoliationClosed : G.riemannianFoliation
  bundleLikeStructureClosed : G.bundleLikeStructure
  transverseStructureClosed : G.transverseStructure

def GeometrizationClosed {H : HolonomyPackage} {h : H} (G : GeometrizationPackage h) : Prop :=
  G.leafSpaceGeometrization ∧ G.riemannianFoliation ∧ G.bundleLikeStructure ∧ G.transverseStructure

theorem geometrization_closed_from_evidence {H : HolonomyPackage} {h : H} (G : GeometrizationPackage h) (E : GeometrizationEvidence G) :
    GeometrizationClosed G := by
  exact And.intro E.leafSpaceGeometrizationClosed (And.intro E.riemannianFoliationClosed (And.intro E.bundleLikeStructureClosed E.transverseStructureClosed))

end FoliationsDifferentialTopologyGeometricTheoryCanonicalLaneLean
end HautevilleHouse