import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure DynamicalSystem (X : Type u) where
  stateSpace : Set X
  evolution : ℕ → X → X
  invariantSet : Set X
  discreteTime : Prop
  continuousDependence : Prop

def DynamicalSystemClosed {X : Type u} (D : DynamicalSystem X) : Prop :=
  D.discreteTime ∧ D.continuousDependence

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse
