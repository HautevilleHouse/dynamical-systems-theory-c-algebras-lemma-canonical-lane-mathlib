import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure FermiGoldenRule (A : Type u) [CStarRing A] (H : A) (δ : ℝ) where
  perturbation : A
  transitionRate : Prop
  deltaLimit : Prop
  asymptoticExpansion : Prop

structure FermiGoldenRuleEvidence (F : FermiGoldenRule A H δ) where
  transitionRateClosed : F.transitionRate
  deltaLimitClosed : F.deltaLimit
  asymptoticExpansionClosed : F.asymptoticExpansion

def FermiGoldenRuleClosed (F : FermiGoldenRule A H δ) : Prop :=
  F.transitionRate ∧ F.deltaLimit ∧ F.asymptoticExpansion

theorem fermi_golden_rule_closed_from_evidence (F : FermiGoldenRule A H δ) (E : FermiGoldenRuleEvidence F) :
    FermiGoldenRuleClosed F := by
  exact And.intro E.transitionRateClosed (And.intro E.deltaLimitClosed E.asymptoticExpansionClosed)

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse