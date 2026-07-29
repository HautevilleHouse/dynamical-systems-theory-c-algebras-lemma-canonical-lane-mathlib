import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean

structure PimsnerVoiculescuSequence (A : Type u) [CStarRing A] (α : ℤ → Automorphism A) where
  toeplitzExtension : Type v
  sixTermExactSequence : Prop
  connectingMaps : Prop
  indexMap : Prop
  exponentialMap : Prop

structure PimsnerVoiculescuSequenceEvidence (S : PimsnerVoiculescuSequence A α) where
  sixTermExactSequenceClosed : S.sixTermExactSequence
  connectingMapsClosed : S.connectingMaps
  indexMapClosed : S.indexMap
  exponentialMapClosed : S.exponentialMap

def PimsnerVoiculescuSequenceClosed (S : PimsnerVoiculescuSequence A α) : Prop :=
  S.sixTermExactSequence ∧ S.connectingMaps ∧ S.indexMap ∧ S.exponentialMap

theorem pimsner_voiculescu_sequence_closed_from_evidence (S : PimsnerVoiculescuSequence A α) (E : PimsnerVoiculescuSequenceEvidence S) :
    PimsnerVoiculescuSequenceClosed S := by
  exact And.intro E.sixTermExactSequenceClosed
    (And.intro E.connectingMapsClosed (And.intro E.indexMapClosed E.exponentialMapClosed))

end DynamicalSystemsTheoryCAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse