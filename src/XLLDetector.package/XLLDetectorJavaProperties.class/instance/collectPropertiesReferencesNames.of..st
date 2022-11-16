as yet unclassified
collectPropertiesReferencesNames: aPropsInvocator of: aFastModel

	|generalPattern|
	
	generalPattern := XLLJavaPatterns new.
	
	^ (generalPattern _defineInvocationWithArgs: 'getProperty' usingInvocator: aPropsInvocator) collectBindings: {#anyValue} for: aFastModel.