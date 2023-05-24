as yet unclassified
getReferenceContainers: resourceEntity
	
	| javaPattern bindings invocator |
	
	bindings := OrderedCollection new. 
	invocator := (self getVariableOfRegisteredResourceContainer: resourceEntity parentType name ) first.  
	javaPattern := AdonisJavaPatterns new defineInvocationWithoutArgs: resourceEntity name usingInvocator: (invocator at:'Variable') name.
	clientModel do: [ :each | bindings addAll: (javaPattern collectBindings: { #methodInvocation. } for: each )].
	
	^ bindings. 
	 