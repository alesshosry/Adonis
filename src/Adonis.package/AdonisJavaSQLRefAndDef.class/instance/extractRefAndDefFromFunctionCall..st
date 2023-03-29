as yet unclassified
extractRefAndDefFromFunctionCall: aParsedQuery

	| results |
	
	references add: (self buildHostEntityFor: 'call' using: aParsedQuery).
	results := (self metadata getFunctions select:
					  [ :eachFunction | eachFunction name = aParsedQuery ])
						  asOrderedCollection .
	results 
		ifEmpty: [ definitions add: (self
			 buildForeignEntityFor: 'N/A' "
			 using: aParsedQuery")]
		ifNotEmpty: [ definitions add: (self
			 buildForeignEntityFor: results first "
			 using: aParsedQuery") ].
