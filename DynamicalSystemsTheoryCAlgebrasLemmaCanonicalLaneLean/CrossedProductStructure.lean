import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalSystemCStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure CrossedProductStructure (A : DynamicalSystemCStarAlgebra) where
  group : Type u
  groupAction : group → A.carrier → A.carrier
  actionContinuous : Continuous (fun (g : group) => groupAction g)
  actionHomomorphism : ∀ g a b, groupAction g (a + b) = groupAction g a + groupAction g b
  crossedProductAlgebra : Type v
  crossedProductCStar : CstarRing crossedProductAlgebra
  inclusion : A.carrier → crossedProductAlgebra
  unitaryImplementation : group → crossedProductAlgebra
  covarianceCondition : ∀ g a, inclusion (groupAction g a) = unitaryImplementation g * inclusion a * star (unitaryImplementation g)

def CrossedProductStructureClosed {A : DynamicalSystemCStarAlgebra} (C : CrossedProductStructure A) : Prop :=
  C.actionHomomorphism ∧ C.covarianceCondition

end HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse