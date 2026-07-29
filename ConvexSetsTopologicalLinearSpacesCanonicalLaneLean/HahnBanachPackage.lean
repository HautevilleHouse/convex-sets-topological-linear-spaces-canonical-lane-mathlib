import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure HahnBanachPackage {X : LocallyConvexTopologicalVectorSpace} where
  subspaceDual : Set (X.carrier → ℝ)
  linearFunctional : X.carrier → ℝ
  boundedBySublinear : Prop
  extensionExists : Prop
  boundedBySublinearProof : boundedBySublinear
  extensionExistsProof : extensionExists

structure HahnBanachEvidence {X : LocallyConvexTopologicalVectorSpace} (H : HahnBanachPackage X) where
  boundedBySublinearClosed : H.boundedBySublinear
  extensionExistsClosed : H.extensionExists

def HahnBanachClosed {X : LocallyConvexTopologicalVectorSpace} (H : HahnBanachPackage X) : Prop :=
  H.boundedBySublinear ∧ H.extensionExists

theorem hahn_banach_closed_from_evidence {X : LocallyConvexTopologicalVectorSpace} (H : HahnBanachPackage X) (E : HahnBanachEvidence H) : HahnBanachClosed H := by
  exact And.intro E.boundedBySublinearClosed E.extensionExistsClosed

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse