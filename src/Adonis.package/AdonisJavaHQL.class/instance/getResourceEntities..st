as yet unclassified
getResourceEntities: eachResourceContainer

	^ (self extractResourceEntitiesFor: eachResourceContainer) collect: [
		  :eachBinding |
		  self buildResourceEntityFor: (eachBinding at: 'attributeValue1') ]