as yet unclassified
extractRefAndDefFromFunctionCall: aParsedQuery

	| results |
	
	references add: (self buildReferenceFor: 'call' using: aParsedQuery).
	results := (self metadata getFunctions select:
					  [ :eachFunction | eachFunction name = aParsedQuery ])
						  asOrderedCollection .
	results 
		ifEmpty: [ definitions add: (self
			 buildDefinitionFor: 'N/A' 
			 using: aParsedQuery)]
		ifNotEmpty: [ definitions add: (self
			 buildDefinitionFor: results first 
			 using: aParsedQuery) ].
