as yet unclassified
detectJavaPropertiesLinks

	|xllLink |
	
	xllLink := super defineLink.
  
	self mainModel allModelClasses do: [ :eachClass | 
		
		|fastModel propertiesDeclarators|		
		fastModel := eachClass generateFastAndBind.
		
		"Step 1: getting all detelarators names of Properties"
		propertiesDeclarators := self detectPropertiesDeclarationsOf: fastModel. 
		
		" Step 2: loop over declarators found (we can have props1. and props2. in the same class "
		propertiesDeclarators ifNotEmpty: [
			propertiesDeclarators do: [ :eachDeclarator | 
				
				"Step 3: get all references, definitions and locator convenient to each declarator" 
				|inputFile|
				xllLink references addAll: (self buildReferences: ( self collectPropertiesReferencesNames: eachDeclarator of: fastModel)). 
				inputFile := self detectPropertiesLocator: eachDeclarator of: fastModel. 
				xllLink definitions addAll: (self buildDefinitions: (self parsePropertyFile: (self getPropertiesFullPath: inputFile))). 		
			].
		].		
	].

	self detectedLinks add: xllLink.
	