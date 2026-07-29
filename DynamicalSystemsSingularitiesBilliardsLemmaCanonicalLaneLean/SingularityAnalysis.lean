import DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean.DynamicalBilliardsModel

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure SingularityAnalysisPackage (G : DynamicalBilliardsSystem) where
  singularityClassification : Prop
  regularizedTrajectory : Prop
  admissibleClosure : Bool

structure SingularityAnalysisEvidence (G : DynamicalBilliardsSystem) (P : SingularityAnalysisPackage G) where
  singularityClassificationClosed : P.singularityClassification
  regularizedTrajectoryClosed : P.regularizedTrajectory

def SingularityAnalysisClosed (G : DynamicalBilliardsSystem) (P : SingularityAnalysisPackage G) : Prop :=
  P.singularityClassification ∧ P.regularizedTrajectory

theorem singularity_analysis_closed_from_evidence (G : DynamicalBilliardsSystem) (P : SingularityAnalysisPackage G) (E : SingularityAnalysisEvidence G P) : SingularityAnalysisClosed G P := by
  exact And.intro E.singularityClassificationClosed E.regularizedTrajectoryClosed

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse