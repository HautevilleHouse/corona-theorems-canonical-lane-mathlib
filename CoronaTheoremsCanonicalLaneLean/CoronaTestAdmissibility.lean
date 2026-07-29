import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure CoronaTest where
  population : Type
  infectionStatus : population → Prop
  testOutcome : population → Prop
  sensitivity : Prop
  specificity : Prop
  prevalence : Prop

structure CoronaAdmittedObject where
  test : CoronaTest
  sensitivitySatisfied : sensitivity
  specificitySatisfied : specificity
  testAccurate : Prop
  conclusion : testAccurate

def CoronaWitnessClosed (O : CoronaAdmittedObject) : Prop :=
  O.testAccurate

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse