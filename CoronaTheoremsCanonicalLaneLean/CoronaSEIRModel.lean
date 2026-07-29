import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure SEIRModelPackage where
  susceptible : Type u
  exposed : Type v
  infected : Type w
  recovered : Type x
  transmissionRate : Prop
  incubationPeriod : Prop
  recoveryRate : Prop
  basicReproductiveNumber : Prop
  seasonalityFactor : Prop

structure SEIRModelEvidence (M : SEIRModelPackage) where
  transmissionRateClosed : M.transmissionRate
  incubationPeriodClosed : M.incubationPeriod
  recoveryRateClosed : M.recoveryRate
  basicReproductiveNumberClosed : M.basicReproductiveNumber
  seasonalityFactorClosed : M.seasonalityFactor

def SEIRModelClosed (M : SEIRModelPackage) : Prop :=
  M.transmissionRate ∧ M.incubationPeriod ∧ M.recoveryRate ∧ M.basicReproductiveNumber ∧ M.seasonalityFactor

theorem seir_model_closed_from_evidence (M : SEIRModelPackage) (E : SEIRModelEvidence M) : SEIRModelClosed M :=
  And.intro E.transmissionRateClosed (And.intro E.incubationPeriodClosed (And.intro E.recoveryRateClosed (And.intro E.basicReproductiveNumberClosed E.seasonalityFactorClosed)))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse