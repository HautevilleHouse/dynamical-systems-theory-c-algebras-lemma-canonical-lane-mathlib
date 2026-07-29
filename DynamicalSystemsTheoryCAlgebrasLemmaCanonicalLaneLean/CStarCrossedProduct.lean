import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure CStarCrossedProduct (A : Type u) [CStarRing A] (G : Type v) [Group G] [TopologicalSpace G] [TopologicalGroup G] [ContinuousAction G A] where
  carrier : Type w
  starRing : StarRing carrier
  cstarRing : CStarRing carrier
  universalProperty : Prop
  reducedProperty : Prop

structure CStarCrossedProductEvidence (X : CStarCrossedProduct A G) where
  universalPropertyClosed : X.universalProperty
  reducedPropertyClosed : X.reducedProperty

def CStarCrossedProductClosed (X : CStarCrossedProduct A G) : Prop :=
  X.universalProperty ∧ X.reducedProperty

theorem cstar_crossed_product_closed_from_evidence (X : CStarCrossedProduct A G) (E : CStarCrossedProductEvidence X) :
    CStarCrossedProductClosed X := by
  exact And.intro E.universalPropertyClosed E.reducedPropertyClosed

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse