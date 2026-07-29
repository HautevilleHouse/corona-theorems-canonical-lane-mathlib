import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure TherapeuticInterventionPackage where
  antiviralTarget : Type u
  drugEfficacy : Prop
  resistanceProfile : Prop
  safetyMargin : Prop
  clinicalOutcome : Prop

structure TherapeuticInterventionEvidence (T : TherapeuticInterventionPackage) where
  drugEfficacyClosed : T.drugEfficacy
  resistanceProfileClosed : T.resistanceProfile
  safetyMarginClosed : T.safetyMargin
  clinicalOutcomeClosed : T.clinicalOutcome

def TherapeuticInterventionClosed (T : TherapeuticInterventionPackage) : Prop :=
  T.drugEfficacy ∧ T.resistanceProfile ∧ T.safetyMargin ∧ T.clinicalOutcome

theorem therapeutic_intervention_closed_from_evidence (T : TherapeuticInterventionPackage) (E : TherapeuticInterventionEvidence T) : TherapeuticInterventionClosed T := by
  exact And.intro E.drugEfficacyClosed (And.intro E.resistanceProfileClosed (And.intro E.safetyMarginClosed E.clinicalOutcomeClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse