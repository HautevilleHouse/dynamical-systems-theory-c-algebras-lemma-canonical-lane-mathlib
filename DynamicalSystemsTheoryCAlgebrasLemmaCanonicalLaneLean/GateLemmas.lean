import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

def gateClosed (A : DynamicalSystemCStarAlgebra) (C : AdmissibleClass A) : Prop :=
  bridgeClosed A C

theorem gate_from_admissible_class (A : DynamicalSystemCStarAlgebra) (C : AdmissibleClass A) : gateClosed A C := by
  exact bridge_from_admissible_class A C

end HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse