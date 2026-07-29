import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure CoronaVirusMutationPackage where
  spikeProteinSequence : Type u
  mutationRate : Prop
  variantClassification : Prop
  epitopeConservation : Prop
  replicationFidelity : Prop

structure CoronaVirusMutationEvidence (C : CoronaVirusMutationPackage) where
  mutationRateClosed : C.mutationRate
  variantClassificationClosed : C.variantClassification
  epitopeConservationClosed : C.epitopeConservation
  replicationFidelityClosed : C.replicationFidelity

def CoronaVirusMutationClosed (C : CoronaVirusMutationPackage) : Prop :=
  C.mutationRate ∧ C.variantClassification ∧ C.epitopeConservation ∧ C.replicationFidelity

theorem corona_virus_mutation_closed_from_evidence (C : CoronaVirusMutationPackage) (E : CoronaVirusMutationEvidence C) : CoronaVirusMutationClosed C := by
  exact And.intro E.mutationRateClosed (And.intro E.variantClassificationClosed (And.intro E.epitopeConservationClosed E.replicationFidelityClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse