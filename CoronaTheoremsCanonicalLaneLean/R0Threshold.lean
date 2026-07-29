import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure R0ThresholdPackage where
  basicReproductiveNumber : ℝ
  effectiveReproductiveNumber : ℝ
  thresholdValue : ℝ
  herdImmunityThreshold : Prop
  exponentialGrowthRegime : Prop

structure R0ThresholdEvidence (R : R0ThresholdPackage) where
  herdImmunityThresholdClosed : R.herdImmunityThreshold
  exponentialGrowthRegimeClosed : R.exponentialGrowthRegime

def R0ThresholdClosed (R : R0ThresholdPackage) : Prop :=
  R.herdImmunityThreshold ∧ R.exponentialGrowthRegime

theorem r0_threshold_closed_from_evidence (R : R0ThresholdPackage)
    (E : R0ThresholdEvidence R) : R0ThresholdClosed R :=
  And.intro E.herdImmunityThresholdClosed E.exponentialGrowthRegimeClosed

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse