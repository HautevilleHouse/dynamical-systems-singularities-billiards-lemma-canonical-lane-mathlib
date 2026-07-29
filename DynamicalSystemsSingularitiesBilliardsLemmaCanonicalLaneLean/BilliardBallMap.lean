import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardBallMap where
  domain : Type u
  topology : TopologicalSpace domain
  configSpace : Type v
  projection : domain → configSpace
  momentumSpace : Type w
  momentum : domain → momentumSpace
  flowMap : ℝ × domain → domain
  timeScale : ℝ
  reflectionLaw : domain → domain
  smooth : Prop
  symplectic : Prop

structure BilliardBallMapEvidence (B : BilliardBallMap) where
  smoothClosed : B.smooth
  symplecticClosed : B.symplectic
  flowMapProperties : ∀ (t : ℝ) (x : B.domain), B.flowMap (0, x) = x
  reflectionLawInvolution : ∀ (x : B.domain), B.reflectionLaw (B.reflectionLaw x) = x

def BilliardBallMapClosed (B : BilliardBallMap) : Prop :=
  B.smooth ∧ B.symplectic

theorem billiard_ball_map_closed_from_evidence (B : BilliardBallMap) (E : BilliardBallMapEvidence B) :
    BilliardBallMapClosed B := by
  exact And.intro E.smoothClosed E.symplecticClosed

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse