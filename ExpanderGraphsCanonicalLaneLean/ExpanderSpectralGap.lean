import ExpanderGraphsCanonicalLaneLean.ExpanderAdmittedObject

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderSpectralGapPackage where
  adjacencyOperator : Type u
  spectrumDecomposition : Prop
  lambdaTwoStrictlyLessOne : Prop
  expansionCoefficientPositive : Prop

structure ExpanderSpectralGapEvidence (P : ExpanderSpectralGapPackage) where
  lambdaTwoStrictlyLessOneClosed : P.lambdaTwoStrictlyLessOne
  expansionCoefficientPositiveClosed : P.expansionCoefficientPositive

def ExpanderSpectralGapClosed (P : ExpanderSpectralGapPackage) : Prop :=
  P.lambdaTwoStrictlyLessOne ∧ P.expansionCoefficientPositive

theorem expander_spectral_gap_closed_from_evidence (P : ExpanderSpectralGapPackage)
    (E : ExpanderSpectralGapEvidence P) : ExpanderSpectralGapClosed P := by
  exact And.intro E.lambdaTwoStrictlyLessOneClosed E.expansionCoefficientPositiveClosed

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse