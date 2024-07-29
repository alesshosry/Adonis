as yet unclassified
detectResourceEntities: referenceEntity

	^ (self getResourceContainers: referenceEntity) flattened collect: [
		  :eachResourceContainer |
		  		self getResourceEntity: eachResourceContainer ]