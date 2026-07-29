import canonicalLaneMathlib.AdmissibleClass

/-!
# Crossed Product Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure CrossedProduct {A : AdmissibleClass} (D : DynamicalCStarAlgebra A) where
  reducedCrossedProduct : Type u
  fullCrossedProduct : Type v
  nuclearProperty : Prop
  haagerupProperty : Prop
  nuclearPropertyTerm : nuclearProperty
  haagerupPropertyTerm : haagerupProperty

structure CrossedProductEvidence {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    (C : CrossedProduct D) where
  nuclearPropertyClosed : C.nuclearProperty
  haagerupPropertyClosed : C.haagerupProperty

def CrossedProductClosed {A : AdmissibleClass} {D : DynamicalCStarAlgebra A}
    (C : CrossedProduct D) : Prop :=
  C.nuclearProperty ∧ C.haagerupProperty

theorem crossed_product_closed_from_evidence
    {A : AdmissibleClass} {D : DynamicalCStarAlgebra A} (C : CrossedProduct D)
    (E : CrossedProductEvidence C) : CrossedProductClosed C := by
  exact And.intro E.nuclearPropertyClosed E.haagerupPropertyClosed

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse