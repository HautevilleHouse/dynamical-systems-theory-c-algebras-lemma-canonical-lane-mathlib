import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalSystemsCAlgebraBridge
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.CrossedProductClosure

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

def ConstrainedDynamicalCStarClosure (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) (C : CStarCrossedProduct A G) (D : DynamicalCStarAdmissibleClass A G C) : Prop :=
  bridgeClosed A G C D ∧ gateClosed A G C D

theorem constrained_dynamical_cstar_endgame (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) (C : CStarCrossedProduct A G) (D : DynamicalCStarAdmissibleClass A G C) : ConstrainedDynamicalCStarClosure A G C D := by
  exact And.intro (bridge_from_admissible_class A G C D) (gate_from_admissible_class A G C D)

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse