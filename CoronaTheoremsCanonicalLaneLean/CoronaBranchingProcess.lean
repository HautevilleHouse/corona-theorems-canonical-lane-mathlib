import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure BranchingProcessPackage where
  offspringDistribution : Type u
  generationSize : Type v
  extinctionProbability : Prop
  criticalityCondition : Prop
  superspreadingEventRate : Prop
  herdImmunityThreshold : Prop

structure BranchingProcessEvidence (B : BranchingProcessPackage) where
  extinctionProbabilityClosed : B.extinctionProbability
  criticalityConditionClosed : B.criticalityCondition
  superspreadingEventRateClosed : B.superspreadingEventRate
  herdImmunityThresholdClosed : B.herdImmunityThreshold

def BranchingProcessClosed (B : BranchingProcessPackage) : Prop :=
  B.extinctionProbability ∧ B.criticalityCondition ∧ B.superspreadingEventRate ∧ B.herdImmunityThreshold

theorem branching_process_closed_from_evidence (B : BranchingProcessPackage) (E : BranchingProcessEvidence B) : BranchingProcessClosed B :=
  And.intro E.extinctionProbabilityClosed (And.intro E.criticalityConditionClosed (And.intro E.superspreadingEventRateClosed E.herdImmunityThresholdClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse