import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure DynamicalSystemCStarAlgebra where
  carrier : Type u
  starRing : StarRing carrier
  cstarRing : CstarRing carrier
  normedAlgebra : NormedAlgebra ℂ carrier
  dynamics : carrier → carrier
  dynamicsContinuous : Continuous dynamics
  homomorphismProperty : dynamics 0 = 0 ∧ ∀ a b, dynamics (a + b) = dynamics a + dynamics b
  involutive : ∀ a, star (dynamics a) = dynamics (star a)

def DynamicalSystemCStarAlgebraClosed (A : DynamicalSystemCStarAlgebra) : Prop :=
  A.homomorphismProperty.1 ∧ A.homomorphismProperty.2 ∧ A.involutive

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse