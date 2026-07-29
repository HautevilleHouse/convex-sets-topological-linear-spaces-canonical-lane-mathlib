import ConvexSetsTopologicalLinearSpacesCanonicalLaneLean.BridgeLemmas
import Mathlib.Analysis.Convex.Separation

/-!
# Separation Theorems Package
-/

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure SeparationTheoremsPackage where
  convexSetA : Type u
  convexSetB : Type u
  topologicalVectorSpace : Prop
  disjointConvexSets : Prop
  strictSeparation : Prop
  geometricForm : Prop
  analyticForm : Prop

def SeparationTheoremsClosed (P : SeparationTheoremsPackage) : Prop :=
  P.disjointConvexSets ∧ P.strictSeparation ∧ P.geometricForm ∧ P.analyticForm

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse