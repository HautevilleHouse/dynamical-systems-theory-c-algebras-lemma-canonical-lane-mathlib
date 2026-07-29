import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalSystemCStarAlgebra

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure TopologicalEntropy (A : DynamicalSystemCStarAlgebra) where
  entropyValue : ℝ≥0
  variationalPrinciple : Prop
  approximationBySubalgebras : Prop
  continuityUnderPerturbations : Prop

def TopologicalEntropyCStarClosed (A : DynamicalSystemCStarAlgebra) (E : TopologicalEntropy A) : Prop :=
  E.variationalPrinciple ∧ E.approximationBySubalgebras ∧ E.continuityUnderPerturbations

theorem topological_entropy_cstar_closed_from_evidence (A : DynamicalSystemCStarAlgebra) (E : TopologicalEntropy A) (h1 : E.variationalPrinciple) (h2 : E.approximationBySubalgebras) (h3 : E.continuityUnderPerturbations) : TopologicalEntropyCStarClosed A E := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse