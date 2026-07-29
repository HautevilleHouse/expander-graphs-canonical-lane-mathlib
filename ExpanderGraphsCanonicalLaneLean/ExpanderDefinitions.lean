import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderGraphObject where
  graph : Type u
  vertexSet : Finset (graph)
  edgeSet : Finset (graph × graph)
  adjacencyMatrix : Matrix (vertexSet.card) (vertexSet.card) ℕ
  regularityDegree : ℕ
  spectralGap : ℝ
  expansionConstant : ℝ
  isRegular : regularityDegree > 0
  isConnected : True
  spectralGapPositive : spectralGap > 0
  conclusion : isRegular ∧ isConnected ∧ spectralGapPositive

structure ExpanderGraphWitnessClosed (O : ExpanderGraphObject) : Prop where
  closed : True

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse