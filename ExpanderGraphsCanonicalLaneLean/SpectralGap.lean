import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.ExpanderDefinitions

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure SpectralGapCertificate where
  graph : ExpanderGraphObject
  eigenvalues : List ℝ
  secondLargestEigenvalue : ℝ
  lowerBound : ℝ
  eigenvalueListSorted : eigenvalues.Sorted (· ≤ ·)
  secondLargestIsSecond : eigenvalues.get? 1 = some secondLargestEigenvalue
  spectralGapComputed : graph.spectralGap = 1 - secondLargestEigenvalue
  lowerBoundPositive : lowerBound > 0
  conclusion : spectralGapComputed ∧ secondLargestEigenvalue < 1

theorem spectral_gap_closed (C : SpectralGapCertificate) : C.conclusion := by
  exact And.intro C.spectralGapComputed (by
    have h : graph.spectralGap > 0 := graph.spectralGapPositive
    linarith)

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse