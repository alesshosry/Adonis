as yet unclassified
getVariableOfRegisteredResourceContainer: resourceContainer

	| bindings javaPattern |
	bindings := OrderedCollection new.

	javaPattern := AdonisJavaPatterns new defineDeclParamForType: resourceContainer.
	clientModel do: [ :each | 
		bindings addAll:
			(javaPattern collectBindings: { #Variable } for: each) ].
	^ bindings