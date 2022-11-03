as yet unclassified
collectPropertiesReferencesNames: aPropsInvocator of: aFastModel

	|generalPattern|
	
	generalPattern := XLLJavaPatterns new.
	
	^ (generalPattern defineJavaMethodInvocationWithArguments: 'getProperty' andInvocator: aPropsInvocator) collectBindings: {#arguments} for: aFastModel.