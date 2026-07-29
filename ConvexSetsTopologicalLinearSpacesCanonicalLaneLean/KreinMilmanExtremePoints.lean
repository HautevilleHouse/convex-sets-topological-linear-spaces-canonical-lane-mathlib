import ConvexSetsTopologicalLinearSpacesCanonicalLaneLean.BridgeLemmas
import Mathlib.Analysis.Convex.KreinMilman

/-!
# Krein-Milman Extreme Points Package
-/

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure KreinMilmanExtremePointsPackage where
  compactConvexSet : Type u
  topologicalSpace : TopologicalSpace compactConvexSet
  locallyConvexTVS : Prop
  extremePointSetNonempty : Prop
  closedConvexHullOfExtremePoints : Prop
  compactnessCondition : Prop

def KreinMilmanClosed (P : KreinMilmanExtremePointsPackage) : Prop :=
  P.locallyConvexTVS ∧ P.extremePointSetNonempty ∧ P.closedConvexHullOfExtremePoints ∧ P.compactnessCondition

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse