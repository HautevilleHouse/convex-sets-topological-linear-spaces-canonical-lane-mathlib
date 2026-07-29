import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure LocallyConvexTopologicalVectorSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : Module ℝ carrier
  locallyConvex : Prop
  hausdorff : Prop
  locallyConvexProof : locallyConvex
  hausdorffProof : hausdorff

structure ConvexSetAdmittedObject where
  space : LocallyConvexTopologicalVectorSpace
  convexSet : Set (space.carrier)
  closedConvex : IsClosed convexSet
  originContained : (0 : space.carrier) ∈ convexSet
  absorbent : Absorbent convexSet
  balanced : Balanced convexSet
  conclusion : True

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse