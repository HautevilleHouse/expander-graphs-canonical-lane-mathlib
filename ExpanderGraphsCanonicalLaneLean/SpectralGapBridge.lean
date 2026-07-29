import canonicalLaneMathlib.AdmissibleClass
import ExpanderGraphsCanonicalLaneLean.ExpanderGraphAdmissibleClass

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExpanderGraphWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse