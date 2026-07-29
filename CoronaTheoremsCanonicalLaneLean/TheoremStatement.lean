import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure CoronaAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  coronaProperty : Prop
  conclusion : coronaProperty

def CoronaWitnessClosed (O : CoronaAdmittedObject) : Prop :=
  O.coronaProperty

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse