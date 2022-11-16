as yet unclassified
detectDefinitions: aDictionary

	|javaFilePath xmlFilePath nodes referenceName xmlBindings definitions|
	
	referenceName := aDictionary at: 'EntityName'. 
	javaFilePath := aDictionary at: 'FileName'.
	xmlFilePath := self extractXMLPathFromJava: javaFilePath.
	definitions := OrderedCollection new.
	
	xmlFilePath exists ifTrue: [ 
		nodes := (self parseXMLFileReference: xmlFilePath).
		xmlBindings := self collectBindingsFromXMLNodes: nodes for: referenceName	.
		"match here with nodes and extract XML elemnt + build definition and return."
		xmlBindings 
		ifNotEmpty: [ 
			xmlBindings do: [ :eachXMLElement | 
					definitions add: (self buildDefinitionFor: referenceName using: eachXMLElement).
				].
			].
		 "ifEmpty: [ 
			definitions add: (self buildDefinitionFor: referenceName using: '').
			]."
		].
	^ definitions
	
	