import canonicalLaneMathlib.AdmissibleClass
import CoronaTheoremsCanonicalLaneLean.CoronaTestAdmissibility

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoronaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse