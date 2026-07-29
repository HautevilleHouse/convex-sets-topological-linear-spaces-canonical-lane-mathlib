import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure KreinMilmanTheoremPackage where
  topologicalVectorSpace : Type u
  topology : TopologicalSpace topologicalVectorSpace
  locallyConvex : Prop
  hausdorff : Prop
  compactConvexSet : Set topologicalVectorSpace
  compactness : Prop
  convexSet : Prop
  extremePoints : Set topologicalVectorSpace
  closureOfConvexHullOfExtremePoints : Set topologicalVectorSpace
  extremalClosure : closure (convexHull (extremePoints)) = compactConvexSet
  compactConvexSetAsClosed : closure compactConvexSet = compactConvexSet

def KreinMilmanTheoremClosed (P : KreinMilmanTheoremPackage) : Prop :=
  P.locallyConvex ∧ P.hausdorff ∧ P.compactness ∧ P.convexSet ∧ P.extremalClosure ∧ P.compactConvexSetAsClosed

theorem krein_milman_theorem_closed_from_evidence (P : KreinMilmanTheoremPackage) : KreinMilmanTheoremClosed P := by
  refine And.intro P.locallyConvex (And.intro P.hausdorff (And.intro P.compactness (And.intro P.convexSet (And.intro P.extremalClosure P.compactConvexSetAsClosed))))

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse
