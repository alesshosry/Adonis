as yet unclassified
buildReferencesAndDefinitions: queries
	
	queries ifNotEmpty: [ 
		queries do: [ :eachQuery | 
			| parsedQuery refDefBuilder|
			"1- parse query"
			parsedQuery := self parseQuery: eachQuery.

			"2- check query type and extractReferences"
			refDefBuilder := XLLDetectorJavaSQLRefAndDef new.
			^ (refDefBuilder extractRefAndDefFrom: parsedQuery using: metadata ) 
		] 
	].
	