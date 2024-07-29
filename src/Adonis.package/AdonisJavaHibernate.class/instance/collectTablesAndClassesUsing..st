as yet unclassified
collectTablesAndClassesUsing: aJavaHQLDetector 

   |classesMapped bindings mappings|
	
	mappings := OrderedCollection new.
	classesMapped := aJavaHQLDetector detectedExternalDependencies collect: [ :each | each referenceEntity elementName].
	bindings := self extractTablesAndClassesBindingsUsing: aJavaHQLDetector.
	bindings do: [ :eachBinding | 
		(classesMapped includes: (eachBinding at: 'attributeValue2'))ifTrue: [
		 mappings add: (aJavaHQLDetector cutClassName:  (eachBinding at: 'attributeValue2')) -> (eachBinding at: 'attributeValue1')
			] 
		 ].
	
	^ mappings
	
	