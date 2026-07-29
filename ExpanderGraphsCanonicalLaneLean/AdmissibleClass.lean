import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure AdmissibleClass where
  object : ExpanderGraphObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExpanderGraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse