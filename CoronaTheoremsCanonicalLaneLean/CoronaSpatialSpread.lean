import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure SpatialSpreadPackage where
  space : Type u
  topology : TopologicalSpace space
  infectionRate : Type v
  mobilityKernel : Type w
  dispersionRelation : Prop
  reproductionNumber : Prop
  clusteringCoefficient : Prop
  secondWaveCondition : Prop

structure SpatialSpreadEvidence (S : SpatialSpreadPackage) where
  dispersionRelationClosed : S.dispersionRelation
  reproductionNumberClosed : S.reproductionNumber
  clusteringCoefficientClosed : S.clusteringCoefficient
  secondWaveConditionClosed : S.secondWaveCondition

def SpatialSpreadClosed (S : SpatialSpreadPackage) : Prop :=
  S.dispersionRelation ∧ S.reproductionNumber ∧ S.clusteringCoefficient ∧ S.secondWaveCondition

theorem spatial_spread_closed_from_evidence (S : SpatialSpreadPackage) (E : SpatialSpreadEvidence S) : SpatialSpreadClosed S :=
  And.intro E.dispersionRelationClosed (And.intro E.reproductionNumberClosed (And.intro E.clusteringCoefficientClosed E.secondWaveConditionClosed))

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse