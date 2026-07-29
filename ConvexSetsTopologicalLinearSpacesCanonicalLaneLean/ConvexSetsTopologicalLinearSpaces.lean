import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure ConvexSet (X : Type u) [TopologicalSpace X] [AddCommMonoid X] [Module ℝ X] where
  carrier : Set X
  convex : ∀ x y ∈ carrier, ∀ (t : ℝ), t ≥ 0 → t ≤ 1 → t • x + (1 - t) • y ∈ carrier

structure TopologicalVectorSpace (X : Type u) where
  topologicalAddGroup : TopologicalAddGroup X
  continuousSMul : ContinuousSMul ℝ X

structure LocallyConvexSpace (X : Type u) extends TopologicalVectorSpace X where
  localBase : Set (Set X)
  localConvex : ∀ U ∈ localBase, ConvexSet X where
    carrier := U
    convex := sorry

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse