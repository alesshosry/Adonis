as yet unclassified
extractRefAndDefFrom: aParsedQuery using: extractedMetadata
	
	self metadata: extractedMetadata .
	
	aParsedQuery class = PSQLASTSelectQuery ifTrue: [ ^ self extractRefAndDefFromSelectQuery: aParsedQuery ].
	aParsedQuery class = PSQLASTInsertQuery  ifTrue: [ ^ self extractRefAndDefFromInsertQuery: aParsedQuery ].
	aParsedQuery class = PSQLASTUpdateQuery ifTrue: [ ^ self extractRefAndDefFromUpdateQuery: aParsedQuery ].
	aParsedQuery class = PSQLASTDeleteQuery ifTrue: [ ^ self extractRefAndDefFromDeleteQuery: aParsedQuery ].
	aParsedQuery class = ByteString ifTrue: [ ^ self extractRefAndDefFromFunctionCall: aParsedQuery ].