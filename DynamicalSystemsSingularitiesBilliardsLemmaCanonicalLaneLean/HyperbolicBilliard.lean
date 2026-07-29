import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure HyperbolicBilliardModel where
  billiardTable : Type u
  metric : billiardTable → billiardTable → ℝ
  curvature : billiardTable → ℝ
  collisionOperator : billiardTable → billiardTable → billiardTable
  lyapunovExponents : List ℝ
  ergodicity : Prop
  mixing : Prop
  exponentialDecayCorrelations : Prop

structure HyperbolicBilliardEvidence (H : HyperbolicBilliardModel) where
  negativeCurvature : ∀ x : H.billiardTable, H.curvature x < 0
  nonvanishingLyapunov : H.lyapunovExponents.length > 0
  ergodicityClosed : H.ergodicity
  mixingClosed : H.mixing
  exponentialDecayCorrelationsClosed : H.exponentialDecayCorrelations

def HyperbolicBilliardClosed (H : HyperbolicBilliardModel) : Prop :=
  H.ergodicity ∧ H.mixing ∧ H.exponentialDecayCorrelations

theorem hyperbolic_billiard_closed_from_evidence (H : HyperbolicBilliardModel) (E : HyperbolicBilliardEvidence H) :
    HyperbolicBilliardClosed H := by
  exact And.intro E.ergodicityClosed (And.intro E.mixingClosed E.exponentialDecayCorrelationsClosed)

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse