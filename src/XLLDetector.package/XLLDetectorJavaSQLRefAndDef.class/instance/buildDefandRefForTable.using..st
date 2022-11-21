as yet unclassified
buildDefandRefForTable: tableIdentifier using: key
	
	references add:
		(self buildReferenceFor: key using: tableIdentifier).
	definitions add: (self addDefinitionForTable: tableIdentifier).
