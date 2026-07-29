import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.ExpanderGraphConcepts

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure AmplificationPackage (E : ExpanderFamily) where
  originalGraph : E
  powers : ℕ → ExpanderFamily
  zigzagProduct : ExpanderFamily
  spectralGapAmplified : ℝ
  zigzagExpanderConstant : ℝ

structure AmplificationEvidence (A : AmplificationPackage E) where
  powerSpectralGapClosed : A.spectralGapAmplified > 0
  zigzagExpanderClosed : A.zigzagExpanderConstant > 0
  zigzagProductRegular : (A.zigzagProduct).regularDegree > 0

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse