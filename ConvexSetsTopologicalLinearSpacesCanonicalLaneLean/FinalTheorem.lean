import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

def ConstrainedConvexSetsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convex_sets_endgame (A : AdmissibleClass) :
    ConstrainedConvexSetsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse