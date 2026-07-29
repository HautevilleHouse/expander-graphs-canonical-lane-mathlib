import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.ExpanderGraphConcepts

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure RandomWalkPackage {E : ExpanderFamily} where
  mixingTime : ℕ
  stationaryDistribution : E.vertexSet → ℝ
  mixingBound : Prop
  convergenceRate : ℝ

structure RandomWalkEvidence {E : ExpanderFamily} (R : RandomWalkPackage E) where
  stationaryDistributionClosed : ∀ v : E.vertexSet, R.stationaryDistribution v = 1 / (Fintype.card E.vertexSet : ℝ)
  mixingTimeClosed : R.mixingBound
  convergenceRateClosed : R.convergenceRate > 0

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse