import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

def ConstrainedCoronaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_corona_endgame (A : AdmissibleClass) : ConstrainedCoronaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse