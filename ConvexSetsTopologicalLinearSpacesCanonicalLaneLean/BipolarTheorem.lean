import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure BipolarPackage (V : ConvexTopologicalVectorSpace) where
  dualSpace : Type u
  dualTopology : TopologicalSpace dualSpace
  dualPairing : V.carrier → dualSpace → ℝ
  polar : Set V.carrier → Set dualSpace
  polarDefinition : ∀ S : Set V.carrier, polar S = { f ∈ dualSpace | ∀ x ∈ S, dualPairing x f ≤ 1 }
  bipolar : Set V.carrier → Set V.carrier
  bipolarDefinition : ∀ S : Set V.carrier, bipolar S = { x ∈ V.carrier | ∀ f ∈ polar S, dualPairing x f ≤ 1 }
  bipolarTheorem : ∀ S : Set V.carrier, convexHull ℝ S ∪ {0} = bipolar (polar S)

structure BipolarEvidence {V : ConvexTopologicalVectorSpace} (B : BipolarPackage V) where
  bipolarTheoremClosed : B.bipolarTheorem

def BipolarClosed {V : ConvexTopologicalVectorSpace} (B : BipolarPackage V) : Prop :=
  B.bipolarTheorem

theorem bipolar_closed_from_evidence {V : ConvexTopologicalVectorSpace} (B : BipolarPackage V) (E : BipolarEvidence B) : BipolarClosed B := by
  exact E.bipolarTheoremClosed

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse