as yet unclassified
extractRefAndDefFromDeleteQuery: aParsedQuery

	| tableIdentifier |
	tableIdentifier := aParsedQuery tableName identifier.
	self buildDefandRefForTable: 'delete from' using: tableIdentifier.

	aParsedQuery whereClause ifNotNil: [ 
		| columns |
		columns := 'condition>_*>accessed>identifier' asObjectPath 
			           resolveFrom: aParsedQuery whereClause.
		columns do: [ :eachColumn | 
			| columnIdentifier |
			columnIdentifier := eachColumn accessed identifier.
			self buildDefandRefForColumn: columnIdentifier ownedBy: tableIdentifier using: 'where'.
		]. 
	].
