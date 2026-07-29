import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ExpanderSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ExpanderAdmittedObject where
  space : ExpanderSpace
  finiteGraph : Prop
  spectralGapPositive : Prop
  expanderFamilyModel : Type
  expanderFamilyTopology : TopologicalSpace expanderFamilyModel
  familyMembership : Prop
  conclusion : familyMembership

def ExpanderWitnessClosed (O : ExpanderAdmittedObject) : Prop :=
  O.familyMembership

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse