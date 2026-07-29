import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalSystemsCAlgebraBridge

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

def gateClosed (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) (C : CStarCrossedProduct A G) (D : DynamicalCStarAdmissibleClass A G C) : Prop :=
  D.endpointSatisfied ∨ D.remainderRecorded

theorem gate_from_admissible_class (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) (C : CStarCrossedProduct A G) (D : DynamicalCStarAdmissibleClass A G C) : gateClosed A G C D := by
  exact D.gateWitness

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse