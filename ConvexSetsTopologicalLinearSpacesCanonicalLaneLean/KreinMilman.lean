import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure KreinMilmanPackage where
  compactConvexSet : ConvexSet ℝ
  extremePoints : Set ℝ
  closedConvexHull : Set ℝ
  kreinMilmanConclusion : closedConvexHull = extremePoints.convexHull
  kreinMilmanEvidence : kreinMilmanConclusion

theorem krein_milman_closed (K : KreinMilmanPackage) : K.kreinMilmanConclusion := K.kreinMilmanEvidence

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse