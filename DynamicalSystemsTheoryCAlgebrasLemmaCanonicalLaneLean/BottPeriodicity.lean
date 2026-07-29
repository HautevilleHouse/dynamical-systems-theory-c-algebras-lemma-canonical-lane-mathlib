import canonicalLaneMathlib.AdmissibleClass

/-!
# Bott Periodicity Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure BottPeriodicity {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    {C : CrossedProduct D} {K : KTheory C} where
  k0Andk2Isomorphic : Prop
  suspensionIsomorphism : Prop
  sixTermExactSequence : Prop
  k0Andk2IsomorphicTerm : k0Andk2Isomorphic
  suspensionIsomorphismTerm : suspensionIsomorphism
  sixTermExactSequenceTerm : sixTermExactSequence

structure BottPeriodicityEvidence {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    {C : CrossedProduct D} {K : KTheory C} (B : BottPeriodicity K) where
  k0Andk2IsomorphicClosed : B.k0Andk2Isomorphic
  suspensionIsomorphismClosed : B.suspensionIsomorphism
  sixTermExactSequenceClosed : B.sixTermExactSequence

def BottPeriodicityClosed {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    {C : CrossedProduct D} {K : KTheory C} (B : BottPeriodicity K) : Prop :=
  B.k0Andk2Isomorphic ∧ B.suspensionIsomorphism ∧ B.sixTermExactSequence

theorem bott_periodicity_closed_from_evidence
    {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    {C : CrossedProduct D} {K : KTheory C} (B : BottPeriodicity K)
    (E : BottPeriodicityEvidence B) : BottPeriodicityClosed B := by
  exact And.intro E.k0Andk2IsomorphicClosed
    (And.intro E.suspensionIsomorphismClosed E.sixTermExactSequenceClosed)

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse