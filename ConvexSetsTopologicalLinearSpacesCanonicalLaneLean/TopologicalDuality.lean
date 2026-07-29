import ConvexSetsTopologicalLinearSpacesCanonicalLaneLean.BridgeLemmas
import Mathlib.Analysis.Convex.Topology

/-!
# Topological Duality Package
-/

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure TopologicalDualityPackage where
  dualSpace : Type u
  weakTopology : TopologicalSpace dualSpace
  polarForm : Prop
  bipolarTheorem : Prop
  MackeyArensTheorem : Prop
  strongTopology : Prop
  barreledness : Prop

def TopologicalDualityClosed (P : TopologicalDualityPackage) : Prop :=
  P.bipolarTheorem ∧ P.MackeyArensTheorem ∧ P.barreledness

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse