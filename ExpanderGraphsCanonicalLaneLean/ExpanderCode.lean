import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExpanderGraphsCanonicalLaneLean.ExpanderGraphConcepts

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure ExpanderCodePackage {E : ExpanderFamily} where
  codeRate : ℝ
  relativeDistance : ℝ
  encodingMap : E.vertexSet → E.vertexSet
  decodingMap : E.vertexSet → E.vertexSet
  errorCorrectionCapability : ℕ

structure ExpanderCodeEvidence {E : ExpanderFamily} (C : ExpanderCodePackage E) where
  distanceClosed : C.relativeDistance > 0
  rateClosed : C.codeRate > 0
  decodingCorrectness : ∀ v : E.vertexSet, C.decodingMap (C.encodingMap v) = v

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse