import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure SymbolicDynamicsBridge where
  codingMap : Type u
  shiftSpace : Type v
  shiftInvariant : Prop
  finiteTypeCondition : Prop
  codingIsomorphism : Prop

def BridgeEvidence (BR : SymbolicDynamicsBridge) : Prop :=
  BR.shiftInvariant ∧ BR.finiteTypeCondition ∧ BR.codingIsomorphism

theorem symbolic_dynamics_bridge_closed (BR : SymbolicDynamicsBridge) (E : BridgeEvidence BR) : BridgeEvidence BR := E

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse