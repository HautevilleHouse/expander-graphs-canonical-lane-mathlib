import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

def bridgeClosed (A : AdmissibleExpanderClass) : Prop :=
  expanderWitnessClosed A.object.graph

theorem bridge_from_admissible_class (A : AdmissibleExpanderClass) : bridgeClosed A := by
  exact A.object.conclusion

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse