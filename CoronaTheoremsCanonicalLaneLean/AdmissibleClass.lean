import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure CoronaAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  particleRigging : Prop
  impactCrossSectionClosed : Prop

structure AdmissibleClass where
  object : CoronaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.impactCrossSectionClosed) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse