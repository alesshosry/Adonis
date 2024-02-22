as yet unclassified
extractTablesAndClassesBindingsUsing: aJavaHQLDetector 

	|parsedMappings| 
	
	parsedMappings := aJavaHQLDetector getReferenceContainers collect: [ :each | aJavaHQLDetector parseXMLResourceFile:  each  ].
	
	^ parsedMappings flatCollect: [ :each | 
		aJavaHQLDetector extractReferenceEntitiesFor: each
	].
	