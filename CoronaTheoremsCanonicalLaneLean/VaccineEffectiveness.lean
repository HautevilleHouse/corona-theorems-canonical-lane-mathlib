import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure VaccineEfficacyPackage where
  vaccineName : String
  trialPopulation : Type
  infectionRateControl : ℝ
  infectionRateVaccinated : ℝ
  efficacy : ℝ
  efficacyFormulated : Prop
  confidenceInterval : Prop

structure VaccineEfficacyEvidence (V : VaccineEfficacyPackage) where
  efficacyFormulatedClosed : V.efficacyFormulated
  confidenceIntervalClosed : V.confidenceInterval

def VaccineEfficacyClosed (V : VaccineEfficacyPackage) : Prop :=
  V.efficacyFormulated ∧ V.confidenceInterval

theorem vaccine_efficacy_closed_from_evidence (V : VaccineEfficacyPackage)
    (E : VaccineEfficacyEvidence V) : VaccineEfficacyClosed V :=
  And.intro E.efficacyFormulatedClosed E.confidenceIntervalClosed

def standardEfficacyFormula (infectionRateControl infectionRateVaccinated : ℝ) : ℝ :=
  (infectionRateControl - infectionRateVaccinated) / infectionRateControl

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse