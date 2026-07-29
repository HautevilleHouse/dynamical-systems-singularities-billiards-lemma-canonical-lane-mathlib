import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure PhaseSpaceBilliardTable where
  configurationSpace : Type u
  momentumSpace : Type v
  collisionWall : Type w
  tableBoundary : Set configurationSpace
  smoothBoundaryComponent : Prop
  flatInterior : Prop
  momentumReflectionLaw : momentumSpace -> momentumSpace
  trajectoryContinuation : Prop
  boundaryMeasureZero : Prop
  smoothBoundaryComponentTerm : smoothBoundaryComponent
  flatInteriorTerm : flatInterior
  trajectoryContinuationTerm : trajectoryContinuation
  boundaryMeasureZeroTerm : boundaryMeasureZero

structure PhaseSpaceGeometryEvidence (T : PhaseSpaceBilliardTable) where
  smoothBoundaryComponentClosed : T.smoothBoundaryComponent
  flatInteriorClosed : T.flatInterior
  trajectoryContinuationClosed : T.trajectoryContinuation
  boundaryMeasureZeroClosed : T.boundaryMeasureZero

def PhaseSpaceGeometryClosed (T : PhaseSpaceBilliardTable) : Prop :=
  T.smoothBoundaryComponent ∧ T.flatInterior ∧ T.trajectoryContinuation ∧ T.boundaryMeasureZero

theorem phase_space_geometry_closed_from_evidence (T : PhaseSpaceBilliardTable) (E : PhaseSpaceGeometryEvidence T) :
    PhaseSpaceGeometryClosed T := by
  exact And.intro E.smoothBoundaryComponentClosed
    (And.intro E.flatInteriorClosed
      (And.intro E.trajectoryContinuationClosed E.boundaryMeasureZeroClosed))

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse
