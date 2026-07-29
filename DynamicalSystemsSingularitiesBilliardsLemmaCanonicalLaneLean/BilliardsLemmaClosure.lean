import DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean.SingularityAnalysis
import DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean.BridgeLemmas
import DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

def ConstrainedBilliardsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_billiards_endgame (A : AdmissibleClass) :
    ConstrainedBilliardsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse