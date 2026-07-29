import DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.CrossedProductStructure

/-!
# Dynamical Entropy Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure DynamicalEntropyPackage {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    (C : CrossedProductPackage alpha) where
  topologicalEntropyDefined : Prop
  metricEntropyDefined : Prop
  variationalPrinciple : Prop
  entropyInvariance : Prop

structure DynamicalEntropyEvidence {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} (E : DynamicalEntropyPackage C) where
  topologicalEntropyClosed : E.topologicalEntropyDefined
  metricEntropyClosed : E.metricEntropyDefined
  variationalPrincipleClosed : E.variationalPrinciple
  entropyInvarianceClosed : E.entropyInvariance

def DynamicalEntropyClosed {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} (E : DynamicalEntropyPackage C) : Prop :=
  E.topologicalEntropyDefined ∧ E.metricEntropyDefined ∧
  E.variationalPrinciple ∧ E.entropyInvariance

theorem dynamical_entropy_closed_from_evidence
    {G : TopologicalGroupPackage} {A : CStarAlgebraPackage}
    {alpha : ContinuousActionPackage G A} {C : CrossedProductPackage alpha}
    (E : DynamicalEntropyPackage C) (Ev : DynamicalEntropyEvidence E) :
    DynamicalEntropyClosed E := by
  exact And.intro Ev.topologicalEntropyClosed
    (And.intro Ev.metricEntropyClosed
      (And.intro Ev.variationalPrincipleClosed Ev.entropyInvarianceClosed))

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse