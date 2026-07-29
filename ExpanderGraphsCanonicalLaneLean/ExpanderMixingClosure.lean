import canonicalLaneMathlib.AdmissibleClass
import ExpanderGraphsCanonicalLaneLean.SpectralGapBridge
import ExpanderGraphsCanonicalLaneLean.ExpanderMixingLemmaGate

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

def ConstrainedExpanderMixingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_expander_mixing_endgame (A : AdmissibleClass) :
    ConstrainedExpanderMixingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse