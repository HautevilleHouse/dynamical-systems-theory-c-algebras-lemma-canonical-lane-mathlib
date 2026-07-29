import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure KMSState (A : Type u) [CStarRing A] (σ : ℝ → Automorphism A) (β : ℝ) where
  state : A → ℂ
  positivity : ∀ a ≥ 0, state a ≥ 0
  normalization : state 1 = 1
  kmsCondition : ∀ a b : A, state (a * σ (Complex.I * β) b) = state (b * a)

structure KMSStateEvidence (K : KMSState A σ β) where
  positivityClosed : K.positivity
  normalizationClosed : K.normalization
  kmsConditionClosed : K.kmsCondition

def KMSStateClosed (K : KMSState A σ β) : Prop :=
  K.positivity ∧ K.normalization ∧ K.kmsCondition

theorem kms_state_closed_from_evidence (K : KMSState A σ β) (E : KMSStateEvidence K) :
    KMSStateClosed K := by
  exact And.intro E.positivityClosed (And.intro E.normalizationClosed E.kmsConditionClosed)

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse