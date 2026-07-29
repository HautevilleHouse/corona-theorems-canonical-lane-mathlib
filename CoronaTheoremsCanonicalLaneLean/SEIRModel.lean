import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure SEIRModelPackage where
  susceptibleCompartment : Type u
  exposedCompartment : Type v
  infectiousCompartment : Type w
  recoveredCompartment : Type x
  transmissionRate : ℝ
  incubationPeriod : ℝ
  recoveryRate : ℝ
  basicReproductiveNumber : ℝ

structure SEIRModelEvidence (S : SEIRModelPackage) where
  transmissionRateClosed : S.transmissionRate > 0
  incubationPeriodClosed : S.incubationPeriod > 0
  recoveryRateClosed : S.recoveryRate > 0
  basicReproductiveNumberClosed : S.basicReproductiveNumber = S.transmissionRate / S.recoveryRate

def SEIRModelClosed (S : SEIRModelPackage) : Prop :=
  S.transmissionRate > 0 ∧ S.incubationPeriod > 0 ∧
  S.recoveryRate > 0 ∧ S.basicReproductiveNumber = S.transmissionRate / S.recoveryRate

theorem seir_model_closed_from_evidence (S : SEIRModelPackage)
    (E : SEIRModelEvidence S) : SEIRModelClosed S :=
  And.intro E.transmissionRateClosed
    (And.intro E.incubationPeriodClosed
      (And.intro E.recoveryRateClosed E.basicReproductiveNumberClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse