as yet unclassified
extractRefAndDefFromInsertQuery: aParsedQuery

	| tableIdentifier |
	tableIdentifier := aParsedQuery tableName identifier.
	self buildDefandRefForTable: tableIdentifier using: 'insert into'.
	
	aParsedQuery columns ifNotEmpty: [ 
		aParsedQuery columns do: [ :eachColumn | 
			| columnIdentifier |
			columnIdentifier := eachColumn accessed identifier.
			self buildDefandRefForColumn: columnIdentifier ownedBy: tableIdentifier using: '()'.	
		].
	].