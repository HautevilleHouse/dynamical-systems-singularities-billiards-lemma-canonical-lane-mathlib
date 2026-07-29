import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure SingularityType where
  label : String
  codimension : ℕ
  topologicalInvariant : Prop
  closureUnderFlow : Prop

def SingularityTypesClassified (types : List SingularityType) : Prop :=
  ∀ t ∈ types, t.closureUnderFlow

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse
