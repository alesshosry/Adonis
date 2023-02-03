adding
addDefinitionForTable: anIdentifier

	^ self
		  buildForeignEntityFor: (self metadata getTables select: [ :eachTable | 
				   eachTable name = anIdentifier ]) asOrderedCollection first
		  using: anIdentifier