import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure VaccineEfficacyPackage where
  trialDesign : Type u
  efficacyEstimate : Type v
  confidenceInterval : Prop
  adverseEventsRate : Prop
  sterilizingImmunity : Prop
  variantProtection : Prop
  boosterEffect : Prop

structure VaccineEfficacyEvidence (V : VaccineEfficacyPackage) where
  confidenceIntervalClosed : V.confidenceInterval
  adverseEventsRateClosed : V.adverseEventsRate
  sterilizingImmunityClosed : V.sterilizingImmunity
  variantProtectionClosed : V.variantProtection
  boosterEffectClosed : V.boosterEffect

def VaccineEfficacyClosed (V : VaccineEfficacyPackage) : Prop :=
  V.confidenceInterval ∧ V.adverseEventsRate ∧ V.sterilizingImmunity ∧ V.variantProtection ∧ V.boosterEffect

theorem vaccine_efficacy_closed_from_evidence (V : VaccineEfficacyPackage) (E : VaccineEfficacyEvidence V) : VaccineEfficacyClosed V :=
  And.intro E.confidenceIntervalClosed (And.intro E.adverseEventsRateClosed (And.intro E.sterilizingImmunityClosed (And.intro E.variantProtectionClosed E.boosterEffectClosed)))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse