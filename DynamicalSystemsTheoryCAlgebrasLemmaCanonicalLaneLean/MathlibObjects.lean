import DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicalSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  dynamics : carrier → carrier
  continuous : Continuous dynamics

type CAlgebra
  algebra : Type u
  addition : algebra → algebra → algebra
  multiplication : algebra → algebra → algebra
  involution : algebra → algebra
  norm : algebra → ℝ
  normedAlgebra : NormedAlgebra ℝ algebra
  cstar : CstarRing algebra

structure CAlgebraDynamicalCrossedProduct where
  algebra : CAlgebra
  system : DynamicalSystem
  crossedProduct : Type
  productStructure : Prop
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

structure DynamicalEndgameState where
  object : CAlgebraDynamicalCrossedProduct

def DynamicalWitnessClosed (O : CAlgebraDynamicalCrossedProduct) : Prop :=
  O.lemmaConclusion

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse