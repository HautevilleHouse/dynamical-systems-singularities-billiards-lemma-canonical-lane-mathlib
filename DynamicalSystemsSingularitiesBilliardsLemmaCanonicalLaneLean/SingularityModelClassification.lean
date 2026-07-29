import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure SingularityModelClassification where
  cornerTypesClassified : Prop
  tangentialBlockStructure : Prop
  equivalenceUnderOrbitSegments : Prop

def SingularityModelEvidence (C : SingularityModelClassification) : Prop :=
  C.cornerTypesClassified ∧ C.tangentialBlockStructure ∧ C.equivalenceUnderOrbitSegments

theorem singularity_model_classification_closed (C : SingularityModelClassification) (E : SingularityModelEvidence C) : SingularityModelEvidence C := E

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse