import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure BarrelTheoremsPackage where
  topologicalVectorSpace : Type u
  topology : TopologicalSpace topologicalVectorSpace
  locallyConvex : Prop
  quasicomplete : Prop
  barrelSet : Set topologicalVectorSpace
  barrelDefinition : Prop
  barrelIsNeighborhoodOfZero : Prop
  bornologicalSpace : Prop
  barreledSpace : Prop
  bruhatCompletion : Prop

def BarrelTheoremsClosed (P : BarrelTheoremsPackage) : Prop :=
  P.locallyConvex ∧ P.quasicomplete ∧ P.barrelDefinition ∧ P.barrelIsNeighborhoodOfZero ∧ P.bornologicalSpace ∧ P.barreledSpace ∧ P.bruhatCompletion

theorem barrel_theorems_closed_from_evidence (P : BarrelTheoremsPackage) : BarrelTheoremsClosed P := by
  refine And.intro P.locallyConvex (And.intro P.quasicomplete (And.intro P.barrelDefinition (And.intro P.barrelIsNeighborhoodOfZero (And.intro P.bornologicalSpace (And.intro P.barreledSpace P.bruhatCompletion)))))

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse
