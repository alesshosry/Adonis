as yet unclassified
getResourceEntities: eachResourceContainer

	^ (self extractResourceEntitiesFor: eachResourceContainer) collect: [
		  :eachBinding | "I have to pay attention, not all projects mention the complete url to the class name"
		  self buildResourceEntityFor:
			  ((eachBinding at: 'attributeValue2') splitOn: '.') last ]