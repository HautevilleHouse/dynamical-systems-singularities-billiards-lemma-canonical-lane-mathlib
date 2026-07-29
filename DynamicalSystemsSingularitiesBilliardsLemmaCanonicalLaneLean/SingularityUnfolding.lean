import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure SingularityUnfoldingMap where
  originalDomain : Type u
  blownUpDomain : Type v
  blowingUpMap : originalDomain → blownUpDomain
  singularPoints : Set originalDomain
  exceptionalDivisors : blownUpDomain → Prop
  normalCrossings : Prop
  smoothAfterBlowup : Prop

structure SingularityUnfoldingEvidence (U : SingularityUnfoldingMap) where
  blowingUpMapDefined : ∀ (x : U.originalDomain), U.blowingUpMap x ∈ U.blownUpDomain
  exceptionalDivisorsClosed : U.exceptionalDivisors
  normalCrossingsClosed : U.normalCrossings
  smoothAfterBlowupClosed : U.smoothAfterBlowup

def SingularityUnfoldingClosed (U : SingularityUnfoldingMap) : Prop :=
  U.normalCrossings ∧ U.smoothAfterBlowup

theorem singularity_unfolding_closed_from_evidence (U : SingularityUnfoldingMap) (E : SingularityUnfoldingEvidence U) :
    SingularityUnfoldingClosed U := by
  exact And.intro E.normalCrossingsClosed E.smoothAfterBlowupClosed

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse