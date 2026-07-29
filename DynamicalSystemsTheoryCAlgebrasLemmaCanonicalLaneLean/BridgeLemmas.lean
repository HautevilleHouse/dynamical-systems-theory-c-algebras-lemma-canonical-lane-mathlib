import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.AdmissibleClassBridge

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

def bridgeClosed (A : DynamicalSystemCStarAlgebra) (C : AdmissibleClass A) : Prop :=
  AdmissibleClassClosed A C

theorem bridge_from_admissible_class (A : DynamicalSystemCStarAlgebra) (C : AdmissibleClass A) : bridgeClosed A C := by
  unfold bridgeClosed
  exact C.evidence

end HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse