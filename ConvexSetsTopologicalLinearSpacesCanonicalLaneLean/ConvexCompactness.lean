import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure ConvexCompactPackage {X : LocallyConvexTopologicalVectorSpace} where
  convexCompactSet : Set (X.carrier)
  convex : Convex ℝ convexCompactSet
  compact : IsCompact convexCompactSet
  nonempty : Set.Nonempty convexCompactSet

structure ConvexCompactEvidence {X : LocallyConvexTopologicalVectorSpace} (P : ConvexCompactPackage X) where
  convexClosed : P.convex
  compactClosed : P.compact
  nonemptyClosed : P.nonempty

def ConvexCompactClosed {X : LocallyConvexTopologicalVectorSpace} (P : ConvexCompactPackage X) : Prop :=
  P.convex ∧ P.compact ∧ P.nonempty

theorem convex_compact_closed_from_evidence {X : LocallyConvexTopologicalVectorSpace} (P : ConvexCompactPackage X) (E : ConvexCompactEvidence P) : ConvexCompactClosed P := by
  exact And.intro E.convexClosed (And.intro E.compactClosed E.nonemptyClosed)

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse