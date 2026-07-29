import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BilliardAdmittedObject where
  space : BilliardSpace
  compactConvexDomain : Prop
  flatInteriorSingularitiesFinite : Prop
  invariantMeasure : Type
  invariantMeasureExists : Prop
  conclusion : invariantMeasureExists

structure BilliardEndgameState where
  object : BilliardAdmittedObject

def BilliardWitnessClosed (O : BilliardAdmittedObject) : Prop :=
  O.invariantMeasureExists

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse