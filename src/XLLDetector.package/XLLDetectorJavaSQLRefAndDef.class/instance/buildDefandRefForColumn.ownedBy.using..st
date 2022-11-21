as yet unclassified
buildDefandRefForColumn: columnIdentifier ownedBy: tableIdentifier using: key 
	
	references add:
			(self buildReferenceFor: key using: columnIdentifier).
	definitions addAll: (self
			addDefinitionForColumn: columnIdentifier
			usingTable: tableIdentifier).