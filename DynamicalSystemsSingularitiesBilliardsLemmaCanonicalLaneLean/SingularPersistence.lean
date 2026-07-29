import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure SingularPersistence where
  singularSet : Set (ℕ → ℕ)
  flowInvariant : Prop
  persistentSet : Prop
  boundary : Prop
  flowInvariantTerm : flowInvariant
  persistentTerm : persistentSet
  boundaryTerm : boundary

def PersistenceClosed (P : SingularPersistence) : Prop :=
  P.flowInvariant ∧ P.persistentSet ∧ P.boundary

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse
