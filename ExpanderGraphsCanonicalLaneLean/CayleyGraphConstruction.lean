import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure CayleyGraphConstruction (G : Group) (S : GeneratingSet G) where
  cayleyGraph : Graph
  verticesAreGroupElements : cayleyGraph.V = G
  edgesFromGenerators : ∀ a b : G, (a, b) ∈ cayleyGraph.E ↔ a⁻¹ * b ∈ S
  cayleyGraphRegular : cayleyGraph.regular

structure CayleyGraphEvidence {G : Group} {S : GeneratingSet G} (C : CayleyGraphConstruction G S) where
  verticesAreGroupElementsClosed : C.verticesAreGroupElements
  edgesFromGeneratorsClosed : C.edgesFromGenerators
  cayleyGraphRegularClosed : C.cayleyGraphRegular

def CayleyGraphClosed {G : Group} {S : GeneratingSet G} (C : CayleyGraphConstruction G S) : Prop :=
  C.verticesAreGroupElements ∧ C.edgesFromGenerators ∧ C.cayleyGraphRegular

theorem cayley_graph_closed_from_evidence {G : Group} {S : GeneratingSet G} (C : CayleyGraphConstruction G S) (E : CayleyGraphEvidence C) :
    CayleyGraphClosed C := by
  exact And.intro E.verticesAreGroupElementsClosed (And.intro E.edgesFromGeneratorsClosed E.cayleyGraphRegularClosed)

end HautevilleHouse
end ExpanderGraphsCanonicalLaneLean
