import DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.IrreducibleRepresentations

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure KTheoryFunctorPackage (I : IrreducibleRepresentationPackage (by exact CrossedProductPackage.mk)) where
  k0Group : Type
  k1Group : Type
  bmdMap : Type
  sixTermExactSequence : Prop

structure KTheoryFunctorEvidence (K : KTheoryFunctorPackage) where
  sixTermExactSequenceClosed : K.sixTermExactSequence
  k0WellDefined : Prop
  k1WellDefined : Prop

def KTheoryFunctorClosed (K : KTheoryFunctorPackage) : Prop :=
  K.sixTermExactSequence

theorem k_theory_functor_closed_from_evidence (K : KTheoryFunctorPackage)
    (E : KTheoryFunctorEvidence K) : KTheoryFunctorClosed K := by
  exact E.sixTermExactSequenceClosed

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse