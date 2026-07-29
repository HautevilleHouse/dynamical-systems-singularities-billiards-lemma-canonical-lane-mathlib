import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardsLemmaData (T : BilliardTable) where
  singularitySetFinite : Prop
  recurrenceToSingularity : Prop
  measureZeroOfWandering : Prop
  singularitySetFiniteTerm : singularitySetFinite
  recurrenceToSingularityTerm : recurrenceToSingularity
  measureZeroOfWanderingTerm : measureZeroOfWandering

def BilliardsLemmaConjecture (T : BilliardTable) : Prop :=
  BilliardFlowExtensions T ∧ (∃ (D : BilliardsLemmaData T), D.singularitySetFinite ∧ D.recurrenceToSingularity ∧ D.measureZeroOfWandering)

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse
