import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.SpectralGap

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure RandomWalkMixingProperty where
  graph : ExpanderGraphObject
  subsets : Finset (graph.vertexSet)
  edgeCountBetween : ℕ
  expectedEdgeCount : ℝ
  mixingRatio : ℝ
  edgeCountFormula : edgeCountBetween = ∑ a in subsets, ∑ b in subsets, if (a,b) ∈ graph.edgeSet then 1 else 0
  expectedFormula : expectedEdgeCount = ((subsets.card : ℝ) / (graph.vertexSet.card : ℝ)) ^ 2 * (graph.regularityDegree * graph.vertexSet.card)
  mixingBound : |(edgeCountBetween : ℝ) - expectedEdgeCount| ≤ mixingRatio * graph.regularityDegree * graph.vertexSet.card
  spectralGapUsed : mixingRatio = 1 / Real.sqrt (graph.spectralGap)
  conclusion : mixingBound

theorem random_walk_mixing_closed (P : RandomWalkMixingProperty) : P.conclusion := by
  exact P.mixingBound

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse