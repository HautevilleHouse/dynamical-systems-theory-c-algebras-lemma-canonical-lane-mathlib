import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalSystemCStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure SpectrumDynamicsLemma (A : DynamicalSystemCStarAlgebra) where
  spectrum : A.carrier → Set ℂ
  spectralMapping : ∀ a, spectrum (A.dynamics a) = spectrum a
  spectralRadiusFormula : ∀ a, limsup (fun n : ℕ => ‖A.dynamics^[n] a‖ ^ (1/(n : ℝ))) = sup {|z| : z ∈ spectrum a}
  dynamicsSpectralContinuity : Continuous (fun a => spectrum a)

def SpectrumDynamicsLemmaClosed (A : DynamicalSystemCStarAlgebra) (S : SpectrumDynamicsLemma A) : Prop :=
  S.spectralMapping ∧ S.spectralRadiusFormula ∧ S.dynamicsSpectralContinuity

theorem spectrum_dynamics_lemma_closed_from_evidence (A : DynamicalSystemCStarAlgebra) (S : SpectrumDynamicsLemma A) (h1 : S.spectralMapping) (h2 : S.spectralRadiusFormula) (h3 : S.dynamicsSpectralContinuity) : SpectrumDynamicsLemmaClosed A S := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse