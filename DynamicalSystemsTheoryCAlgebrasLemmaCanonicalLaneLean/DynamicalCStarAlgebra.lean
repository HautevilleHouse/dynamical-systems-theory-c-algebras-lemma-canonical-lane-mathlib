import canonicalLaneMathlib.AdmissibleClass

/-!
# Dynamical C*-Algebra Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure DynamicalCStarAlgebra (A : AdmissibleClass) where
  underlyingCStarAlgebra : Type u
  automorphismAction : Type v
  invariantStates : Prop
  spectrumCondition : Prop
  invariantStatesTerm : invariantStates
  spectrumConditionTerm : spectrumCondition

structure DynamicalCStarAlgebraEvidence {A : AdmissibleClass} (D : DynamicalCStarAlgebra A) where
  invariantStatesClosed : D.invariantStates
  spectrumConditionClosed : D.spectrumCondition

def DynamicalCStarAlgebraClosed {A : AdmissibleClass} (D : DynamicalCStarAlgebra A) : Prop :=
  D.invariantStates ∧ D.spectrumCondition

theorem dynamical_cstar_algebra_closed_from_evidence
    {A : AdmissibleClass} (D : DynamicalCStarAlgebra A)
    (E : DynamicalCStarAlgebraEvidence D) : DynamicalCStarAlgebraClosed D := by
  exact And.intro E.invariantStatesClosed E.spectrumConditionClosed

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse