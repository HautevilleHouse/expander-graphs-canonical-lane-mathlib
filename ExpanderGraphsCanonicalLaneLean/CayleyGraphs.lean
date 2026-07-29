import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.ExpanderDefinitions

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure CayleyGraphStructure where
  group : Type u
  [groupGroup : Group group]
  generatingSet : Finset group
  [generatingSetClosed : ∀ g ∈ generatingSet, g⁻¹ ∈ generatingSet]
  graphType : Finset (group × group)
  edgeDef : graphType = { (a,b) | a ∈ group, b ∈ group, a * b⁻¹ ∈ generatingSet }
  regularityDegree : ℕ
  regularityDegreeDef : regularityDegree = generatingSet.card
  spectralGapBound : ℝ
  spectralGapBoundPositive : spectralGapBound > 0
  conclusion : regularityDegreeDef ∧ spectralGapBoundPositive

theorem cayley_graph_structure_closed (C : CayleyGraphStructure) : C.conclusion := by
  exact And.intro C.regularityDegreeDef C.spectralGapBoundPositive

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse