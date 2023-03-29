as yet unclassified
collectPropertiesReferencesNames: aPropsInvocator of: aFastModel

	|generalPattern|
	
	generalPattern := AdonisJavaPatterns new.
	
	^ (generalPattern defineInvocationWithArgs: 'getProperty' usingInvocator: aPropsInvocator) collectBindings: {#anyValue} for: aFastModel.