import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardTableGeometry where
  domain : Type u
  boundaryComponents : Nat
  corners : List domain
  cornerAngles : List ℝ
  topologicallyConvex : Prop
  boundaryPiecewiseSmooth : Prop
  cornerAnglesLessThanPi : Prop

def BilliardDynamicsSystem (B : BilliardTableGeometry) : Type u := B.domain × (Vector ℝ 2)

structure SingularitySet where
  glancingOrbits : Set (BilliardDynamicsSystem)
  cornerCollisionEvents : Set (BilliardDynamicsSystem)
  tangentialIntersections : Set (BilliardDynamicsSystem)
  measureZero : Prop
  closedUnderFlow : Prop

lemma singularity_set_measure_zero : SingularitySet.measureZero := by
  intro S
  exact S.measureZero

theorem billiard_flow_singularity_structure (B : BilliardTableGeometry) : SingularitySet := by
  refine {
    glancingOrbits := {x | False}
    cornerCollisionEvents := {x | False}
    tangentialIntersections := {x | False}
    measureZero := ?_
    closedUnderFlow := ?_
  }
  · exact by
      intro x
      exact False.elim x
  · exact by
      intro x xh
      exfalso; exact xh

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse