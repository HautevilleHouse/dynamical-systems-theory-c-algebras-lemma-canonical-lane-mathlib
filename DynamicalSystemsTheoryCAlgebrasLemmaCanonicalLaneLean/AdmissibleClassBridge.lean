import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.DynamicalSystemCStarAlgebra
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.CrossedProductStructure
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.KMSStatesEquilibrium
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.TopologicalEntropyCStar
import HautevilleHouse.DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.SpectrumDynamicsLemma

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure AdmissibleClass (A : DynamicalSystemCStarAlgebra) where
  crossedProduct : CrossedProductStructure A
  kmsState : KMSStatesEquilibrium A
  entropy : TopologicalEntropy A
  spectrumLemma : SpectrumDynamicsLemma A
  evidence : DynamicalSystemCStarAlgebraClosed A ∧ CrossedProductStructureClosed crossedProduct ∧ KMSStatesEquilibriumClosed A kmsState ∧ TopologicalEntropyCStarClosed A entropy ∧ SpectrumDynamicsLemmaClosed A spectrumLemma

def AdmissibleClassClosed (A : DynamicalSystemCStarAlgebra) (C : AdmissibleClass A) : Prop :=
  C.evidence.1 ∧ C.evidence.2.1 ∧ C.evidence.2.2.1 ∧ C.evidence.2.2.2.1 ∧ C.evidence.2.2.2.2

end HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse