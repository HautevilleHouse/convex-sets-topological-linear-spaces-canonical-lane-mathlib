import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConvexSetWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse