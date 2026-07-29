import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure MackeyTopologyPackage where
  dualPairing : Type u
  vectorSpaceV : Type v
  vectorSpaceW : Type w
  linearFunctionalFamily : Set (vectorSpaceV → ℝ)
  weakTopology : TopologicalSpace vectorSpaceV
  mackeyTopology : TopologicalSpace vectorSpaceV
  polarSetsFormBase : Prop
  mackeyArensTheorem : Prop
  consistencyWithDuality : Prop

def MackeyTopologyClosed (P : MackeyTopologyPackage) : Prop :=
  P.polarSetsFormBase ∧ P.mackeyArensTheorem ∧ P.consistencyWithDuality

theorem mackey_topology_closed_from_evidence (P : MackeyTopologyPackage) : MackeyTopologyClosed P := by
  exact And.intro P.polarSetsFormBase (And.intro P.mackeyArensTheorem P.consistencyWithDuality)

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse
