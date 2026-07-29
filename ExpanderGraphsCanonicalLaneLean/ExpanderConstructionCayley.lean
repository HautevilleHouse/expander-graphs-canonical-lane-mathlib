import ExpanderGraphsCanonicalLaneLean.ExpanderMixingLemma

namespace HautevilleHouse
namespace ExpanderGraphsCanonicalLaneLean

structure CayleyExpanderConstructionPackage where
  group : Type u
  generatingSet : Set group
  cayleyGraph : Type v
  spectralGapFromGroupTheory : Prop
  expansionFromGenerators : Prop

structure CayleyExpanderConstructionEvidence (P : CayleyExpanderConstructionPackage) where
  spectralGapFromGroupTheoryClosed : P.spectralGapFromGroupTheory
  expansionFromGeneratorsClosed : P.expansionFromGenerators

def CayleyExpanderConstructionClosed (P : CayleyExpanderConstructionPackage) : Prop :=
  P.spectralGapFromGroupTheory ∧ P.expansionFromGenerators

theorem cayley_expander_construction_closed_from_evidence
    (P : CayleyExpanderConstructionPackage)
    (E : CayleyExpanderConstructionEvidence P) : CayleyExpanderConstructionClosed P := by
  exact And.intro E.spectralGapFromGroupTheoryClosed E.expansionFromGeneratorsClosed

end ExpanderGraphsCanonicalLaneLean
end HautevilleHouse