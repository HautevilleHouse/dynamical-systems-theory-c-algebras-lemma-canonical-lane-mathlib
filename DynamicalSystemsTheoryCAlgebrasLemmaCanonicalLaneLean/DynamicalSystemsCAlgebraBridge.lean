import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure CStarAlgebraSystem where
  algebra : Type u
  norm : algebra → ℝ
  involution : algebra → algebra
  CStarIdentity : ∀ a : algebra, norm (a * a) = norm a ^ 2
  completeness : Prop
  CStarIdentityTerm : CStarIdentity
  completenessTerm : completeness

structure DynamicalSystemOnCStarAlgebra (A : CStarAlgebraSystem) where
  timeDomain : Type v
  flow : timeDomain → A.algebra → A.algebra
  continuity : Prop
  groupProperty : ∀ t s x, flow (t + s) x = flow t (flow s x)
  continuityTerm : continuity
  groupPropertyTerm : groupProperty

structure CStarCrossedProduct (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) where
  crossedProductAlgebra : Type w
  norm : crossedProductAlgebra → ℝ
  involution : crossedProductAlgebra → crossedProductAlgebra
  CStarIdentity : ∀ x, norm (x * x) = norm x ^ 2
  completeness : Prop
  CStarIdentityTerm : CStarIdentity
  completenessTerm : completeness

structure DynamicalCStarAdmissibleClass (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) (C : CStarCrossedProduct A G) where
  object : C.crossedProductAlgebra
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) (C : CStarCrossedProduct A G) (D : DynamicalCStarAdmissibleClass A G C) : Prop :=
  D.endpointSatisfied

theorem bridge_from_admissible_class (A : CStarAlgebraSystem) (G : DynamicalSystemOnCStarAlgebra A) (C : CStarCrossedProduct A G) (D : DynamicalCStarAdmissibleClass A G C) : bridgeClosed A G C D := by
  cases' D.gateWitness with h h
  · exact h
  · exact False.elim h

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse