as yet unclassified
getResourceEntities: eachResourceContainer

	^ eachResourceContainer methods collect: [ :aMethod |
			  self buildResourceEntityFor: aMethod .
		].