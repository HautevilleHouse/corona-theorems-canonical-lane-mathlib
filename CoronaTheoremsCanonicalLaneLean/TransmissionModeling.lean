import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure TransmissionModelingPackage where
  basicReproductiveNumber : Type u
  effectiveReproductiveNumber : Prop
  transmissionRate : Prop
  incubationPeriod : Prop
  asymptomaticTransmission : Prop

structure TransmissionModelingEvidence (T : TransmissionModelingPackage) where
  basicReproductiveNumberClosed : T.basicReproductiveNumber
  effectiveReproductiveNumberClosed : T.effectiveReproductiveNumber
  transmissionRateClosed : T.transmissionRate
  incubationPeriodClosed : T.incubationPeriod
  asymptomaticTransmissionClosed : T.asymptomaticTransmission

def TransmissionModelingClosed (T : TransmissionModelingPackage) : Prop :=
  T.basicReproductiveNumber ∧ T.effectiveReproductiveNumber ∧ T.transmissionRate ∧ T.incubationPeriod ∧ T.asymptomaticTransmission

theorem transmission_modeling_closed_from_evidence (T : TransmissionModelingPackage) (E : TransmissionModelingEvidence T) : TransmissionModelingClosed T := by
  exact And.intro E.basicReproductiveNumberClosed (And.intro E.effectiveReproductiveNumberClosed (And.intro E.transmissionRateClosed (And.intro E.incubationPeriodClosed E.asymptomaticTransmissionClosed)))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse