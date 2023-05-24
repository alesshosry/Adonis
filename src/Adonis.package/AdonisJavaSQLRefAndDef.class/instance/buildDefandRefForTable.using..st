as yet unclassified
buildDefandRefForTable: tableIdentifier using: key
	
	references add:
		(self buildReferenceEntityFor: key using: tableIdentifier).
	definitions add: (self addDefinitionForTable: tableIdentifier).
