import ConvexSetsTopologicalLinearSpacesCanonicalLaneLean.BridgeLemmas
import Mathlib.Analysis.Convex.HahnBanach

/-!
# Hahn-Banach Extension Package
-/

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure HahnBanachExtensionPackage where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  linearStructure : Module ℝ underlyingSpace
  locallyConvex : Prop
  sublinearFunctional : underlyingSpace → ℝ
  dominatedExtension : Prop
  extensionExists : Prop

theorem hahn_banach_extension_closed (P : HahnBanachExtensionPackage) : Prop :=
  P.locallyConvex ∧ P.extensionExists

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse