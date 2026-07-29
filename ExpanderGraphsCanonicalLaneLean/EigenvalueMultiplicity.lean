import canonicalLaneMathlib.AdmissibleClass
import ExpanderGraphsCanonicalLaneLean.ExpanderGraphObjects

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure EigenvalueMultiplicityBundle (A : AdmissibleExpanderClass) where
  eigenvalues : List ℝ
  algebraicMultiplicity : ℝ → ℕ
  eigenvalueInequality : ∀ λ ∈ eigenvalues, λ ≥ - A.object.graph.regularityDegree
  spectralGapCharacterization : eigenvalues.tail.head? = some A.object.graph.spectralGap
  multiplicityClosed : eigenvalueInequality ∧ spectralGapCharacterization

structure EigenvalueMultiplicityEvidence (A : AdmissibleExpanderClass) (B : EigenvalueMultiplicityBundle A) where
  eigenvalueInequalityClosed : B.eigenvalueInequality
  spectralGapCharacterizationClosed : B.spectralGapCharacterization

def EigenvalueMultiplicityClosed (A : AdmissibleExpanderClass) (B : EigenvalueMultiplicityBundle A) : Prop :=
  B.eigenvalueInequality ∧ B.spectralGapCharacterization

theorem eigenvalue_multiplicity_closed_from_evidence (A : AdmissibleExpanderClass)
    (B : EigenvalueMultiplicityBundle A) (E : EigenvalueMultiplicityEvidence A B) :
    EigenvalueMultiplicityClosed A B := by
  exact And.intro E.eigenvalueInequalityClosed E.spectralGapCharacterizationClosed

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse