import ExpanderGraphsCanonicalLaneLean.ExpanderConstructionCayley

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderConcentrationInequalityPackage where
  functionSpace : Type u
  lipschitzConstant : ℝ
  deviationBound : Prop
  chernoffStyleBound : Prop

structure ExpanderConcentrationInequalityEvidence (P : ExpanderConcentrationInequalityPackage) where
  deviationBoundClosed : P.deviationBound
  chernoffStyleBoundClosed : P.chernoffStyleBound

def ExpanderConcentrationInequalityClosed (P : ExpanderConcentrationInequalityPackage) : Prop :=
  P.deviationBound ∧ P.chernoffStyleBound

theorem expander_concentration_inequality_closed_from_evidence
    (P : ExpanderConcentrationInequalityPackage)
    (E : ExpanderConcentrationInequalityEvidence P) : ExpanderConcentrationInequalityClosed P := by
  exact And.intro E.deviationBoundClosed E.chernoffStyleBoundClosed

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse