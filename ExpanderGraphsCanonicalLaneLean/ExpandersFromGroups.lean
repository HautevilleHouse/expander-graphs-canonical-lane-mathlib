import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.ExpanderGraphConcepts

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure CayleyExpanderPackage {G : Type u} [Group G] where
  generatingSet : Set G
  cayleyGraph : ExpanderFamily
  cayleyGraph.vertexSet := G
  spectralGapLowerBound : ℝ
  propertyT : Prop

structure CayleyEvidence {G : Type u} [Group G] (C : CayleyExpanderPackage G) where
  generatingSetClosed : C.generatingSet ≠ ∅
  spectralGapClosed : C.spectralGapLowerBound > 0
  propertyTClosed : C.propertyT → C.spectralGapLowerBound > 0

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse