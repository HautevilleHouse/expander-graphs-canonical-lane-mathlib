import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderFamily where
  vertexSet : Type u
  edgeSet : Type v
  adjacency : vertexSet → vertexSet → Prop
  regularDegree : ℕ
  spectralGap : ℝ
  expanderConstant : ℝ
  isFinite : Fintype vertexSet
  regularDegreePos : regularDegree > 0

structure ExpanderEvidence (E : ExpanderFamily) where
  adjacencySymmetric : ∀ u v : E.vertexSet, E.adjacency u v ↔ E.adjacency v u
  degreeConsistent : ∀ v : E.vertexSet, Fintype.card {u : E.vertexSet | E.adjacency v u} = E.regularDegree
  spectralGapPositive : E.spectralGap > 0
  expanderConstantBound : E.expanderConstant > 0

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse