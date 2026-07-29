import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderGraphSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ExpanderGraphAdmittedObject where
  graph : ExpanderGraphSpace
  finiteGraph : Prop
  spectralGapPositive : Prop
  expansionConstant : Prop
  conclusion : expansionConstant

structure ExpanderGraphEndgameState where
  object : ExpanderGraphAdmittedObject

def ExpanderGraphWitnessClosed (O : ExpanderGraphAdmittedObject) : Prop :=
  O.expansionConstant

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse