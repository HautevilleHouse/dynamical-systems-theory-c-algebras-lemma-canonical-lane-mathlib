import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalSystemCStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure KMSState (A : DynamicalSystemCStarAlgebra) (β : ℝ) where
  state : A.carrier → ℂ
  positive : ∀ a, state (star a * a) ≥ 0
  normalized : state (1 : A.carrier) = 1
  KMScondition : ∀ a b : A.carrier, state (a * A.dynamics b) = state (b * A.dynamics (star a))

structure KMSStatesEquilibrium (A : DynamicalSystemCStarAlgebra) where
  inverseTemperature : ℝ
  kmsStateSet : Set (KMSState A inverseTemperature)
  nonempty : kmsStateSet.Nonempty
  simplexStructure : Prop

def KMSStatesEquilibriumClosed (A : DynamicalSystemCStarAlgebra) (E : KMSStatesEquilibrium A) : Prop :=
  E.nonempty ∧ E.simplexStructure

end HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse