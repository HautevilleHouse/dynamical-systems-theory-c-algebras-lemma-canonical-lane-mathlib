import DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean.CrossedProductStructure

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure IrreducibleRepresentationPackage (P : CrossedProductPackage) where
  irreducibleReps : Type
  equivalenceClasses : Prop
  traceMap : Prop
  densityResult : Prop

structure IrreducibleRepresentationEvidence {P : CrossedProductPackage}
    (I : IrreducibleRepresentationPackage P) where
  equivalenceClassesClosed : I.equivalenceClasses
  traceMapClosed : I.traceMap
  densityResultClosed : I.densityResult

def IrreducibleRepresentationClosed {P : CrossedProductPackage}
    (I : IrreducibleRepresentationPackage P) : Prop :=
  I.equivalenceClasses ∧ I.traceMap ∧ I.densityResult

theorem irreducible_representation_closed_from_evidence
    {P : CrossedProductPackage} (I : IrreducibleRepresentationPackage P)
    (E : IrreducibleRepresentationEvidence I) : IrreducibleRepresentationClosed I := by
  exact And.intro E.equivalenceClassesClosed (And.intro E.traceMapClosed E.densityResultClosed)

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse