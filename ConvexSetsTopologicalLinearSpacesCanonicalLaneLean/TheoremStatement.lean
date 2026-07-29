import Mathlib

namespace HautevilleHouse
namespace ConvexSetsTopologicalLinearSpacesCanonicalLaneLean

structure ConvexObject where
  carrier : Type
  topology : TopologicalSpace carrier
  linearStructure : AddCommGroup carrier
  scalarMultiplication : Module ℝ carrier
  convexSet : Set carrier
  isConvex : Convex ℝ convexSet

structure ConvexAdmittedObject where
  space : ConvexObject
  separationProperty : Prop
  extremePointProperty : Prop
  compactConvexClosed : Prop
  conclusion : separationProperty ∧ extremePointProperty ∧ compactConvexClosed

def ConvexWitnessClosed (O : ConvexAdmittedObject) : Prop :=
  O.separationProperty ∧ O.extremePointProperty ∧ O.compactConvexClosed

end ConvexSetsTopologicalLinearSpacesCanonicalLaneLean
end HautevilleHouse