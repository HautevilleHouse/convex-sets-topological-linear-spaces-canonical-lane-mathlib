import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure ConvexTopologicalVectorSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : AddCommGroup carrier
  module : Module ℝ carrier
  convexSet : Set carrier
  convexCondition : ∀ x y ∈ convexSet, ∀ t : ℝ, t ≥ 0 ∧ t ≤ 1 → t • x + (1 - t) • y ∈ convexSet
  topologicalCompatibility : TopologicalAddGroup carrier ∧ ContinuousSMul ℝ carrier

structure ConvexTopologicalVectorSpaceEvidence (V : ConvexTopologicalVectorSpace) where
  convexConditionClosed : V.convexCondition
  topologicalCompatibilityClosed : V.topologicalCompatibility

def ConvexTopologicalVectorSpaceClosed (V : ConvexTopologicalVectorSpace) : Prop :=
  V.convexCondition ∧ V.topologicalCompatibility

theorem convex_topological_vector_space_closed_from_evidence (V : ConvexTopologicalVectorSpace) (E : ConvexTopologicalVectorSpaceEvidence V) : ConvexTopologicalVectorSpaceClosed V := by
  exact And.intro E.convexConditionClosed E.topologicalCompatibilityClosed

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse