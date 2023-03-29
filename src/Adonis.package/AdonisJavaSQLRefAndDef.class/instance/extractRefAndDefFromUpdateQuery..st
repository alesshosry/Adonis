as yet unclassified
extractRefAndDefFromUpdateQuery: aParsedQuery

	| tableIdentifier |
	tableIdentifier := aParsedQuery tableName identifier.
	
	self buildDefandRefForTable: tableIdentifier using: 'update table'.
	
	aParsedQuery setClause items do: [ :eachColumn | 
		| columnIdentifier |
		columnIdentifier := eachColumn left identifier.	
		self buildDefandRefForColumn: columnIdentifier ownedBy: tableIdentifier using: 'set'.
	].

	aParsedQuery whereClause ifNotNil: [ 
		| columns |
		columns := 'condition>_*>accessed>identifier' asObjectPath 
			           resolveFrom: aParsedQuery whereClause.
		columns do: [ :eachColumn | 
			self buildDefandRefForColumn: eachColumn ownedBy: tableIdentifier using: 'where'.
		]. 
	].