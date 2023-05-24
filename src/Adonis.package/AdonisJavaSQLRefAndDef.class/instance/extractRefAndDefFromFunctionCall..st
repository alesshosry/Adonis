as yet unclassified
extractRefAndDefFromFunctionCall: aParsedQuery

	| results |
	
	references add: (self buildReferenceEntityFor: 'call' using: aParsedQuery).
	results := (self metadata getFunctions select:
					  [ :eachFunction | eachFunction name = aParsedQuery ])
						  asOrderedCollection .
	results 
		ifEmpty: [ definitions add: (self
			 buildResourceEntityFor: 'N/A' "
			 using: aParsedQuery")]
		ifNotEmpty: [ definitions add: (self
			 buildResourceEntityFor: results first "
			 using: aParsedQuery") ].
