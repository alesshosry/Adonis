as yet unclassified
fetchParam: parameters inModel: fastModel
 
	|results generalPattern|
	
	generalPattern := AdonisJavaPatterns new.
	results := OrderedCollection new.
	
	parameters do: [ :eachParameter |  
		|query|
		query := (generalPattern definePrimitiveDeclParam: eachParameter using: #'@anyTpe') collectBinding: #anyValues for: fastModel .
		query ifNotEmpty: [results add: query].
	].
		  
	^ results.