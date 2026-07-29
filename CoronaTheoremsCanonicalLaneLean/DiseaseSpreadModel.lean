import HautevilleHouse.CoronaTheoremsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure DiseaseSpreadPackage (A : AdmissibleClass) where
  population : Type
  infectionRate : Prop
  recoveryRate : Prop
  incubationPeriod : Prop
  reproductiveNumber : Prop

structure DiseaseSpreadEvidence (A : AdmissibleClass) (P : DiseaseSpreadPackage A) where
  infectionRateClosed : P.infectionRate
  recoveryRateClosed : P.recoveryRate
  incubationPeriodClosed : P.incubationPeriod
  reproductiveNumberClosed : P.reproductiveNumber

def DiseaseSpreadClosed (A : AdmissibleClass) (P : DiseaseSpreadPackage A) : Prop :=
  P.infectionRate ∧ P.recoveryRate ∧ P.incubationPeriod ∧ P.reproductiveNumber

theorem disease_spread_closed_from_evidence (A : AdmissibleClass) (P : DiseaseSpreadPackage A) (E : DiseaseSpreadEvidence A P) : DiseaseSpreadClosed A P := by
  exact And.intro E.infectionRateClosed (And.intro E.recoveryRateClosed (And.intro E.incubationPeriodClosed E.reproductiveNumberClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse