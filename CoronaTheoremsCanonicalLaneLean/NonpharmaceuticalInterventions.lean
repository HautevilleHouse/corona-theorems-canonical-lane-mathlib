import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure NPIPackage where
  interventionType : String
  reductionInContacts : ℝ
  adherenceRate : ℝ
  effectivenessReduction : ℝ
  effectOnR0 : ℝ

structure NPIEvidence (N : NPIPackage) where
  reductionInContactsClosed : N.reductionInContacts > 0
  adherenceRateClosed : N.adherenceRate > 0
  effectivenessReductionClosed : N.effectivenessReduction = N.reductionInContacts * N.adherenceRate
  effectOnR0Closed : N.effectOnR0 < 1

def NPIEffective (N : NPIPackage) : Prop :=
  N.reductionInContacts > 0 ∧ N.adherenceRate > 0 ∧
  N.effectivenessReduction = N.reductionInContacts * N.adherenceRate ∧
  N.effectOnR0 < 1

theorem npi_effective_from_evidence (N : NPIPackage)
    (E : NPIEvidence N) : NPIEffective N :=
  And.intro E.reductionInContactsClosed
    (And.intro E.adherenceRateClosed
      (And.intro E.effectivenessReductionClosed E.effectOnR0Closed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse