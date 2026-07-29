import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderGraph where
  vertexSet : Type
  edgeSet : Type
  adjacencyMatrix : vertexSet → vertexSet → ℕ
  regularityDegree : ℕ
  spectralGap : ℝ
  isRegular : Prop
  expanderProperty : spectralGap > 0

def expanderWitnessClosed (G : ExpanderGraph) : Prop :=
  G.isRegular ∧ G.expanderProperty

structure AdmittedExpanderGraph where
  graph : ExpanderGraph
  regularityDegree : ℕ
  spectralGap : ℝ
  conclusion : expanderWitnessClosed graph

structure AdmissibleExpanderClass where
  object : AdmittedExpanderGraph
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse