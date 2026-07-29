import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardTable where
  domain : Type u
  boundary : Set domain
  corners : Set domain
  reflectionMap : boundary → boundary
  smoothExceptCorners : Prop

structure BilliardTrajectory (T : BilliardTable) where
  positions : ℝ → T.domain
  impactTimes : Set ℝ
  atBoundary : ∀ t, positions t ∈ T.boundary ↔ t ∈ impactTimes
  reflectionRule : ∀ t ∈ impactTimes, 
    T.reflectionMap (positions t) = positions t

structure BilliardDynamicsPackage (T : BilliardTable) where
  trajectoryExists : Prop
  uniqueness : Prop
  continuityWrtInitial : Prop
  singularSet : Set (T.domain × ℝ)

theorem billiard_trajectory_unique (T : BilliardTable) (γ₁ γ₂ : BilliardTrajectory T) 
    (h : γ₁.positions 0 = γ₂.positions 0) : γ₁ = γ₂ := by
  sorry

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse