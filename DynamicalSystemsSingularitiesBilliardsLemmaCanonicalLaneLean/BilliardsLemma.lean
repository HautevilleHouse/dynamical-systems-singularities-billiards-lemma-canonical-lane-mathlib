import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean

structure BilliardsLemmaPackage (S : SingularityAnalysisPackage B C) (B : BilliardMap C) (C : PhaseSpaceBilliardTable) where
  ergodicityExceptSingularities : Prop
  lyapunovExponentStable : Prop
  exponentialMixing : Prop
  singularSetNull : Prop
  ergodicityExceptSingularitiesTerm : ergodicityExceptSingularities
  lyapunovExponentStableTerm : lyapunovExponentStable
  exponentialMixingTerm : exponentialMixing
  singularSetNullTerm : singularSetNull

structure BilliardsLemmaEvidence {S : SingularityAnalysisPackage B C} {B : BilliardMap C} {C : PhaseSpaceBilliardTable} (L : BilliardsLemmaPackage S B C) where
  ergodicityExceptSingularitiesClosed : L.ergodicityExceptSingularities
  lyapunovExponentStableClosed : L.lyapunovExponentStable
  exponentialMixingClosed : L.exponentialMixing
  singularSetNullClosed : L.singularSetNull

def BilliardsLemmaClosed {S : SingularityAnalysisPackage B C} {B : BilliardMap C} {C : PhaseSpaceBilliardTable} (L : BilliardsLemmaPackage S B C) : Prop :=
  L.ergodicityExceptSingularities ∧ L.lyapunovExponentStable ∧ L.exponentialMixing ∧ L.singularSetNull

theorem billiards_lemma_closed_from_evidence {S : SingularityAnalysisPackage B C} {B : BilliardMap C} {C : PhaseSpaceBilliardTable} (L : BilliardsLemmaPackage S B C) (E : BilliardsLemmaEvidence L) :
    BilliardsLemmaClosed L := by
  exact And.intro E.ergodicityExceptSingularitiesClosed
    (And.intro E.lyapunovExponentStableClosed
      (And.intro E.exponentialMixingClosed E.singularSetNullClosed))

end DynamicalSystemsSingularitiesBilliardsLemmaCanonicalLaneLean
end HautevilleHouse
