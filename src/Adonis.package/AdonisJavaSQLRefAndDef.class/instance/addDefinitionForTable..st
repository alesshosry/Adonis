adding
addDefinitionForTable: anIdentifier

	^ self
		  buildResourceEntityFor: (self metadata getTables select: [ :eachTable | 
				   eachTable name = anIdentifier ]) asOrderedCollection first