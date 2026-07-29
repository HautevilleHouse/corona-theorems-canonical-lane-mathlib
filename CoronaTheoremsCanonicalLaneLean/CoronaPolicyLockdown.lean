import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure LockdownPolicyPackage where
  interventionTiming : Type u
  stringencyIndex : Type v
  mobilityReduction : Prop
  caseFatalityRateChange : Prop
  economicCost : Prop
  complianceRate : Prop
  secondWavePrevention : Prop

structure LockdownPolicyEvidence (L : LockdownPolicyPackage) where
  mobilityReductionClosed : L.mobilityReduction
  caseFatalityRateChangeClosed : L.caseFatalityRateChange
  economicCostClosed : L.economicCost
  complianceRateClosed : L.complianceRate
  secondWavePreventionClosed : L.secondWavePrevention

def LockdownPolicyClosed (L : LockdownPolicyPackage) : Prop :=
  L.mobilityReduction ∧ L.caseFatalityRateChange ∧ L.economicCost ∧ L.complianceRate ∧ L.secondWavePrevention

theorem lockdown_policy_closed_from_evidence (L : LockdownPolicyPackage) (E : LockdownPolicyEvidence L) : LockdownPolicyClosed L :=
  And.intro E.mobilityReductionClosed (And.intro E.caseFatalityRateChangeClosed (And.intro E.economicCostClosed (And.intro E.complianceRateClosed E.secondWavePreventionClosed)))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse