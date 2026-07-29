import HautevilleHouse.CoronaTheoremsCanonicalLaneLean.MitigationStrategies

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure EndpointClassificationPackage (A : AdmissibleClass) (D : DiseaseSpreadPackage A) (M : MitigationPackage A D) where
  herdImmunityThreshold : Prop
  epidemicPeakFlat : Prop
  caseFatalityRateBounded : Prop
  outbreakControlCertified : Prop

structure EndpointClassificationEvidence (A : AdmissibleClass) (D : DiseaseSpreadPackage A) (M : MitigationPackage A D) (E : EndpointClassificationPackage A D M) where
  herdImmunityThresholdClosed : E.herdImmunityThreshold
  epidemicPeakFlatClosed : E.epidemicPeakFlat
  caseFatalityRateBoundedClosed : E.caseFatalityRateBounded
  outbreakControlCertifiedClosed : E.outbreakControlCertified

def EndpointClassificationClosed (A : AdmissibleClass) (D : DiseaseSpreadPackage A) (M : MitigationPackage A D) (E : EndpointClassificationPackage A D M) : Prop :=
  E.herdImmunityThreshold ∧ E.epidemicPeakFlat ∧ E.caseFatalityRateBounded ∧ E.outbreakControlCertified

theorem endpoint_classification_closed_from_evidence (A : AdmissibleClass) (D : DiseaseSpreadPackage A) (M : MitigationPackage A D) (E : EndpointClassificationPackage A D M) (Ev : EndpointClassificationEvidence A D M E) : EndpointClassificationClosed A D M E := by
  exact And.intro Ev.herdImmunityThresholdClosed (And.intro Ev.epidemicPeakFlatClosed (And.intro Ev.caseFatalityRateBoundedClosed Ev.outbreakControlCertifiedClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse