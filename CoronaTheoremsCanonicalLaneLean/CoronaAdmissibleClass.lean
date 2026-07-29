import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoronaTheoremsCanonicalLaneLean

structure CoronaAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  probabilityMeasure : MeasureTheory.Measure space
  correlationInequality : Prop
  infectionTreeModel : Type v
  treeTopology : TopologicalSpace infectionTreeModel
  treeSatisfiesCoronaTheorem : Prop
  conclusion : treeSatisfiesCoronaTheorem

def CoronaWitnessClosed (O : CoronaAdmittedObject) : Prop :=
  O.treeSatisfiesCoronaTheorem

end CoronaTheoremsCanonicalLaneLean
end HautevilleHouse