import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

def ConstrainedExpanderGraphClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_expander_graph_endgame (A : AdmissibleClass) :
    ConstrainedExpanderGraphClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse