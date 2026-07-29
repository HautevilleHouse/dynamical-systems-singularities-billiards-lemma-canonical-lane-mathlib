import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean.BilliardMapDynamics
import HautevilleHouse.DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean.BilliardLemmaEndpoint

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

def BilliardLemmaClosure (B : BilliardTableGeometry) (S : SingularitySet) : Prop :=
  False

theorem billiard_lemma_endgame (B : BilliardTableGeometry) (S : SingularitySet) : BilliardLemmaClosure B S := by
  exact False.elim ?_

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse