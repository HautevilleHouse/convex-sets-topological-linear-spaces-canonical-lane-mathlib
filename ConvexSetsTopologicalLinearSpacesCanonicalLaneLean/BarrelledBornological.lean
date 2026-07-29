import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure BarrelledSpacePackage (V : ConvexTopologicalVectorSpace) where
  barrelledCondition : ∀ (T : Set (V.carrier →ₗ[ℝ] ℝ)), (∀ f ∈ T, LinearMapIsContinuous f) → IsWeakStarBounded T → IsBounded T

structure BornologicalSpacePackage (V : ConvexTopologicalVectorSpace) where
  bornologicalCondition : ∀ (T : V.carrier →ₗ[ℝ] ℝ), LinearMapIsBounded T → LinearMapIsContinuous T

structure BarrelledBornologicalEvidence {V : ConvexTopologicalVectorSpace} (B : BarrelledSpacePackage V) (Bo : BornologicalSpacePackage V) where
  barrelledClosed : B.barrelledCondition
  bornologicalClosed : Bo.bornologicalCondition

def BarrelledBornologicalClosed {V : ConvexTopologicalVectorSpace} (B : BarrelledSpacePackage V) (Bo : BornologicalSpacePackage V) : Prop :=
  B.barrelledCondition ∧ Bo.bornologicalCondition

theorem barrelled_bornological_closed_from_evidence {V : ConvexTopologicalVectorSpace} (B : BarrelledSpacePackage V) (Bo : BornologicalSpacePackage V) (E : BarrelledBornologicalEvidence B Bo) : BarrelledBornologicalClosed B Bo := by
  exact And.intro E.barrelledClosed E.bornologicalClosed

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse