import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardMap (C : PhaseSpaceBilliardTable) where
  collisionMap : C.momentumSpace → C.momentumSpace
  flowMap : ℝ → C.configurationSpace → C.momentumSpace → (C.configurationSpace × C.momentumSpace)
  smoothFlow : Prop
  reflectionLawCompatible : Prop
  continuityOnCollision : Prop
  smoothFlowTerm : smoothFlow
  reflectionLawCompatibleTerm : reflectionLawCompatible
  continuityOnCollisionTerm : continuityOnCollision

structure BilliardMapEvidence {C : PhaseSpaceBilliardTable} (B : BilliardMap C) where
  smoothFlowClosed : B.smoothFlow
  reflectionLawCompatibleClosed : B.reflectionLawCompatible
  continuityOnCollisionClosed : B.continuityOnCollision

def BilliardMapClosed {C : PhaseSpaceBilliardTable} (B : BilliardMap C) : Prop :=
  B.smoothFlow ∧ B.reflectionLawCompatible ∧ B.continuityOnCollision

theorem billiard_map_closed_from_evidence {C : PhaseSpaceBilliardTable} (B : BilliardMap C) (E : BilliardMapEvidence B) :
    BilliardMapClosed B := by
  exact And.intro E.smoothFlowClosed
    (And.intro E.reflectionLawCompatibleClosed E.continuityOnCollisionClosed)

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse
