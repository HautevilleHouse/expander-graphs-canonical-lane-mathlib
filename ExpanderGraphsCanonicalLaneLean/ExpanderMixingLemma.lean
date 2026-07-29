import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderMixingLemmaPackage {G : ExpanderGraphPackage} (S : SpectralExpansionPackage G) where
  vertexSubsetA : Set G.V
  vertexSubsetB : Set G.V
  edgeCountBetween : ℕ
  mixingInequality : |edgeCountBetween - (|A| * |B| / n) * d| ≤ λ * √(|A| * |B|)
  spectralGapDefinesLambda : λ = 1 - S.spectralGap
  mixingInequalityHolds : mixingInequality

structure ExpanderMixingLemmaEvidence {G : ExpanderGraphPackage} {S : SpectralExpansionPackage G} (E : ExpanderMixingLemmaPackage S) where
  spectralGapDefinesLambdaClosed : E.spectralGapDefinesLambda
  mixingInequalityHoldsClosed : E.mixingInequalityHolds

def ExpanderMixingLemmaClosed {G : ExpanderGraphPackage} {S : SpectralExpansionPackage G} (E : ExpanderMixingLemmaPackage S) : Prop :=
  E.spectralGapDefinesLambda ∧ E.mixingInequalityHolds

theorem expander_mixing_lemma_closed_from_evidence {G : ExpanderGraphPackage} {S : SpectralExpansionPackage G} (E : ExpanderMixingLemmaPackage S) (Ev : ExpanderMixingLemmaEvidence E) :
    ExpanderMixingLemmaClosed E := by
  exact And.intro Ev.spectralGapDefinesLambdaClosed Ev.mixingInequalityHoldsClosed

end HautevilleHouse
end ExpanderGraphsCanonicalLaneLean
