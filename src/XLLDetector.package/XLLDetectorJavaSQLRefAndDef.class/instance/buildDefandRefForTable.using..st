as yet unclassified
buildDefandRefForTable: tableIdentifier using: key
	
	references add:
		(self buildHostEntityFor: key using: tableIdentifier).
	definitions add: (self addDefinitionForTable: tableIdentifier).
