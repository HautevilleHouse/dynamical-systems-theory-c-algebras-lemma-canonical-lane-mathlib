import DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalEntropy

/-!
# KMS States Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure KMSStatesPackage {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} {E : DynamicalEntropyPackage C}
    (tau : TimeEvolutionPackage A) where
  kmsCondition : Prop
  inverseTemperatureSet : Prop
  phaseTransitionClassified : Prop
  groundStatesIdentified : Prop

structure KMSStatesEvidence {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} {E : DynamicalEntropyPackage C}
    {tau : TimeEvolutionPackage A} (K : KMSStatesPackage tau) where
  kmsConditionClosed : K.kmsCondition
  inverseTemperatureSetClosed : K.inverseTemperatureSet
  phaseTransitionClassifiedClosed : K.phaseTransitionClassified
  groundStatesIdentifiedClosed : K.groundStatesIdentified

def KMSStatesClosed {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} {E : DynamicalEntropyPackage C}
    {tau : TimeEvolutionPackage A} (K : KMSStatesPackage tau) : Prop :=
  K.kmsCondition ∧ K.inverseTemperatureSet ∧
  K.phaseTransitionClassified ∧ K.groundStatesIdentified

theorem kms_states_closed_from_evidence
    {G : TopologicalGroupPackage} {A : CStarAlgebraPackage}
    {alpha : ContinuousActionPackage G A} {C : CrossedProductPackage alpha}
    {E : DynamicalEntropyPackage C} {tau : TimeEvolutionPackage A}
    (K : KMSStatesPackage tau) (Ev : KMSStatesEvidence K) :
    KMSStatesClosed K := by
  exact And.intro Ev.kmsConditionClosed
    (And.intro Ev.inverseTemperatureSetClosed
      (And.intro Ev.phaseTransitionClassifiedClosed Ev.groundStatesIdentifiedClosed))

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse