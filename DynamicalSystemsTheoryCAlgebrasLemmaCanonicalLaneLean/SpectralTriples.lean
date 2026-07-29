import DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.KMSStates

/-!
# Spectral Triples Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure SpectralTriplesPackage {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} {E : DynamicalEntropyPackage C}
    {tau : TimeEvolutionPackage A} {K : KMSStatesPackage tau}
    (S : SpinStructurePackage) where
  diracOperatorDefined : Prop
  noncommutativeIntegration : Prop
  indexPairingComputed : Prop
  localIndexFormula : Prop

structure SpectralTriplesEvidence {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} {E : DynamicalEntropyPackage C}
    {tau : TimeEvolutionPackage A} {K : KMSStatesPackage tau}
    {S : SpinStructurePackage} (Sp : SpectralTriplesPackage S) where
  diracOperatorClosed : Sp.diracOperatorDefined
  noncommutativeIntegrationClosed : Sp.noncommutativeIntegration
  indexPairingClosed : Sp.indexPairingComputed
  localIndexFormulaClosed : Sp.localIndexFormula

def SpectralTriplesClosed {G : TopologicalGroupPackage}
    {A : CStarAlgebraPackage} {alpha : ContinuousActionPackage G A}
    {C : CrossedProductPackage alpha} {E : DynamicalEntropyPackage C}
    {tau : TimeEvolutionPackage A} {K : KMSStatesPackage tau}
    {S : SpinStructurePackage} (Sp : SpectralTriplesPackage S) : Prop :=
  Sp.diracOperatorDefined ∧ Sp.noncommutativeIntegration ∧
  Sp.indexPairingComputed ∧ Sp.localIndexFormula

theorem spectral_triples_closed_from_evidence
    {G : TopologicalGroupPackage} {A : CStarAlgebraPackage}
    {alpha : ContinuousActionPackage G A} {C : CrossedProductPackage alpha}
    {E : DynamicalEntropyPackage C} {tau : TimeEvolutionPackage A}
    {K : KMSStatesPackage tau} {S : SpinStructurePackage}
    (Sp : SpectralTriplesPackage S) (Ev : SpectralTriplesEvidence Sp) :
    SpectralTriplesClosed Sp := by
  exact And.intro Ev.diracOperatorClosed
    (And.intro Ev.noncommutativeIntegrationClosed
      (And.intro Ev.indexPairingClosed Ev.localIndexFormulaClosed))

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse