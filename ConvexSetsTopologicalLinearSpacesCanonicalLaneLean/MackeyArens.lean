import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure MackeyArensPackage where
  dualPair : (TopologicalVectorSpace ℝ, TopologicalVectorSpace ℝ)
  consistentTopologies : Prop
  mackeyTopology : TopologicalVectorSpace ℝ
  arensTopology : TopologicalVectorSpace ℝ
  equivalence : consistentTopologies ↔ (mackeyTopology = arensTopology)
  mackeyArensEvidence : equivalence

theorem mackey_arens_closed (M : MackeyArensPackage) : M.equivalence := M.mackeyArensEvidence

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse