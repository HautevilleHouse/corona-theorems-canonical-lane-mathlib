import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse