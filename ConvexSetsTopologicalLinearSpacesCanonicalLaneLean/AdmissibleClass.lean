import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : ConvexSetAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvexSetWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse