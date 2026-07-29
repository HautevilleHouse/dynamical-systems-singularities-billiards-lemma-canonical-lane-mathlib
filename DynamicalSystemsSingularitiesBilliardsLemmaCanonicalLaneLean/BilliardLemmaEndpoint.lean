import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardLemmaEndpoint where
  orbitSegmentClassification : Prop
  gluingCondition : Prop
  symbolicSequenceFinite : Prop
  periodicOrbitDensity : Prop

def BilliardLemmaAdmissibleObject (B : BilliardTableGeometry) (S : SingularitySet) : AdmissibleObject := {
  background_Scheme := B
  singularity_Scheme := S
  geometricConditions := (by
    intro h
    exact h)
  classification := (by
    intro h
    exact h)
}

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse