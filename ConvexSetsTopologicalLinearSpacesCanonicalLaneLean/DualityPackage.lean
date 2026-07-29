import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure DualityPackage {X : LocallyConvexTopologicalVectorSpace} where
  dualSpace : Type u
  dualTopology : TopologicalSpace dualSpace
  pairing : X.carrier → dualSpace → ℝ
  bilinear : Bilinear pairing
  separating : ∀ x ≠ 0, ∃ f : dualSpace, pairing x f ≠ 0
  strongTopologyCompatible : Prop

structure DualityEvidence {X : LocallyConvexTopologicalVectorSpace} (D : DualityPackage X) where
  bilinearClosed : D.bilinear
  separatingClosed : D.separating
  strongTopologyCompatibleClosed : D.strongTopologyCompatible

def DualityClosed {X : LocallyConvexTopologicalVectorSpace} (D : DualityPackage X) : Prop :=
  D.bilinear ∧ D.separating ∧ D.strongTopologyCompatible

theorem duality_closed_from_evidence {X : LocallyConvexTopologicalVectorSpace} (D : DualityPackage X) (E : DualityEvidence D) : DualityClosed D := by
  exact And.intro E.bilinearClosed (And.intro E.separatingClosed E.strongTopologyCompatibleClosed)

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse