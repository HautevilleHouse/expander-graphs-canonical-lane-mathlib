import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure SpectralExpansionPackage (G : ExpanderGraphPackage) where
  adjacencyEigenvalues : List ℝ
  spectralGap : ℝ
  expanderMixingInequality : Prop
  spectralGapPositive : spectralGap > 0
  expanderMixingInequalityHolds : expanderMixingInequality

structure SpectralExpansionEvidence {G : ExpanderGraphPackage} (S : SpectralExpansionPackage G) where
  spectralGapPositiveClosed : S.spectralGapPositive
  expanderMixingInequalityHoldsClosed : S.expanderMixingInequalityHolds

def SpectralExpansionClosed {G : ExpanderGraphPackage} (S : SpectralExpansionPackage G) : Prop :=
  S.spectralGap > 0 ∧ S.expanderMixingInequality

theorem spectral_expansion_closed_from_evidence {G : ExpanderGraphPackage} (S : SpectralExpansionPackage G) (E : SpectralExpansionEvidence S) :
    SpectralExpansionClosed S := by
  exact And.intro E.spectralGapPositiveClosed E.expanderMixingInequalityHoldsClosed

end HautevilleHouse
end ExpanderGraphsCanonicalLaneLean
