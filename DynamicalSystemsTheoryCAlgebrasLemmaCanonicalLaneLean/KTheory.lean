import canonicalLaneMathlib.AdmissibleClass

/-!
# K-Theory Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure KTheory {A : AdmissibleClass} {D : DynamicalCStarAlgebra A} {C : CrossedProduct D} where
  k0Group : Type u
  k1Group : Type v
  bottPeriodicity : Prop
  indexMapDefined : Prop
  bottPeriodicityTerm : bottPeriodicity
  indexMapDefinedTerm : indexMapDefined

structure KTheoryEvidence {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    {C : CrossedProduct D} (K : KTheory C) where
  bottPeriodicityClosed : K.bottPeriodicity
  indexMapDefinedClosed : K.indexMapDefined

def KTheoryClosed {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    {C : CrossedProduct D} (K : KTheory C) : Prop :=
  K.bottPeriodicity ∧ K.indexMapDefined

theorem k_theory_closed_from_evidence
    {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    {C : CrossedProduct D} (K : KTheory C) (E : KTheoryEvidence K) : KTheoryClosed K := by
  exact And.intro E.bottPeriodicityClosed E.indexMapDefinedClosed

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse