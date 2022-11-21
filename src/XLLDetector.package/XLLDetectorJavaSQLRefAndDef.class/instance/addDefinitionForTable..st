adding
addDefinitionForTable: anIdentifier

	^ self
		  buildDefinitionFor: (self metadata getTables select: [ :eachTable | 
				   eachTable name = anIdentifier ]) asOrderedCollection first
		  using: anIdentifier