import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure SpikeBindingAffinityPackage where
  receptorBindingDomain : Type u
  ace2Receptor : Type v
  bindingEnergy : Prop
  conformationalChange : Prop
  entryEfficiency : Prop

structure SpikeBindingAffinityEvidence (S : SpikeBindingAffinityPackage) where
  bindingEnergyClosed : S.bindingEnergy
  conformationalChangeClosed : S.conformationalChange
  entryEfficiencyClosed : S.entryEfficiency

def SpikeBindingAffinityClosed (S : SpikeBindingAffinityPackage) : Prop :=
  S.bindingEnergy ∧ S.conformationalChange ∧ S.entryEfficiency

theorem spike_binding_affinity_closed_from_evidence (S : SpikeBindingAffinityPackage) (E : SpikeBindingAffinityEvidence S) : SpikeBindingAffinityClosed S := by
  exact And.intro E.bindingEnergyClosed (And.intro E.conformationalChangeClosed E.entryEfficiencyClosed)

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse