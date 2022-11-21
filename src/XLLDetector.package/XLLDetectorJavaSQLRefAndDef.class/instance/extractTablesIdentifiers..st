as yet unclassified
extractTablesIdentifiers: tables

	|tablesIdentifiers|
	tablesIdentifiers := OrderedCollection new.
	
	tables do: [ :eachTable |
			
			|xllTable|
			xllTable := XLLSQLTable new.
			eachTable alias ifNotNil: [  
				xllTable alias: eachTable alias identifier.
			].				
			
			xllTable name: eachTable tableName identifier.
			
			tablesIdentifiers add: xllTable  .		 	
		].

	^ tablesIdentifiers .