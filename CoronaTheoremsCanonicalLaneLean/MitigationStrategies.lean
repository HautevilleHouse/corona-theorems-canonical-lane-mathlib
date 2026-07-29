import HautevilleHouse.CoronaTheoremsCanonicalLaneLean.DiseaseSpreadModel

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure MitigationPackage (A : AdmissibleClass) (D : DiseaseSpreadPackage A) where
  socialDistancing : Prop
  vaccinationRate : Prop
  quarantineEfficacy : Prop
  maskCompliance : Prop

structure MitigationEvidence (A : AdmissibleClass) (D : DiseaseSpreadPackage A) (M : MitigationPackage A D) where
  socialDistancingClosed : M.socialDistancing
  vaccinationRateClosed : M.vaccinationRate
  quarantineEfficacyClosed : M.quarantineEfficacy
  maskComplianceClosed : M.maskCompliance

def MitigationClosed (A : AdmissibleClass) (D : DiseaseSpreadPackage A) (M : MitigationPackage A D) : Prop :=
  M.socialDistancing ∧ M.vaccinationRate ∧ M.quarantineEfficacy ∧ M.maskCompliance

theorem mitigation_closed_from_evidence (A : AdmissibleClass) (D : DiseaseSpreadPackage A) (M : MitigationPackage A D) (E : MitigationEvidence A D M) : MitigationClosed A D M := by
  exact And.intro E.socialDistancingClosed (And.intro E.vaccinationRateClosed (And.intro E.quarantineEfficacyClosed E.maskComplianceClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse