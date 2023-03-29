as yet unclassified
extractRefAndDefFromSelectQuery: aParsedQuery

	|tables columns |
	tables := OrderedCollection new.
	
	tables := (self extractTablesIdentifiers: aParsedQuery fromClause items).
	columns := (self extractColumnsIdentifiers: aParsedQuery columnsAndAliasesSelected).
	 
	tables do: [ :eachTable |  
		self buildDefandRefForTable: eachTable name using: 'from'. 
		"tables add: eachTable name."
	].
	
	columns do: [ :eachColumn | 
		| ownerTables |
		
		ownerTables := (tables select: [ :eachTable | eachTable alias isNotNil and: eachTable alias = eachColumn alias ] ) .
		ownerTables 	ifEmpty: [ ownerTables := tables ]. 
		
		ownerTables do: [ :eachTable | 
			self buildDefandRefForColumn: eachColumn name ownedBy: eachTable name using: 'select'.	
		].	
	].

	aParsedQuery whereClause ifNotNil: [ 
		columns := OrderedCollection new.
		columns := self extractColumnsIdentifiersFromCondition: aParsedQuery whereClause. 
		
		columns do: [ :eachColumn | 
			|ownerTables|
			
			eachColumn alias ifNotNil: [  "case 1: when alias is defined"
				ownerTables := (tables select: [ :eachTable | eachTable alias isNotNil and: eachTable alias = eachColumn alias ] ) .
			]
			ifNil: [  "case 2: when alias is not defined"
				 ownerTables := tables .
			]. 
		
			ownerTables do: [ :eachTable | 
				self buildDefandRefForColumn: eachColumn name ownedBy: eachTable name using: 'where'.
			].	
		]. 
	]
	