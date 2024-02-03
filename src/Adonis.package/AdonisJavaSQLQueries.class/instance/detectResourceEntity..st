private - running
detectResourceEntity: referenceEntity

	^ (self getResourceContainers: referenceEntity) flattened collect: [
		  :eachResourceContainer |
		  		self getResourceEntity: eachResourceContainer ]