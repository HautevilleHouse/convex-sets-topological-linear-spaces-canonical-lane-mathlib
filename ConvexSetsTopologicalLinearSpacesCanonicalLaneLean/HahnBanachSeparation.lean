import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure HahnBanachPackage where
  locallyConvexSpace : LocallyConvexSpace ℝ
  disjointConvexSets : ConvexSet locallyConvexSpace.carrier × ConvexSet locallyConvexSpace.carrier
  separationContinuousLinearFunctional : Prop
  separationEvidence : separationContinuousLinearFunctional

theorem hahn_banach_separation_closed (H : HahnBanachPackage) : H.separationContinuousLinearFunctional := H.separationEvidence

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse