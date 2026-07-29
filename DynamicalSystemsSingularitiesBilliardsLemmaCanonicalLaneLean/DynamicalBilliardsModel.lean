import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure DynamicalBilliardsSystem where
  configurationSpace : Type u
  topology : TopologicalSpace configurationSpace
  hamiltonian : Type v
  billiardPotential : configurationSpace → Prop
  singularitySet : Set configurationSpace

dynamicalBilliardsPotentialClosed : Prop := True

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse