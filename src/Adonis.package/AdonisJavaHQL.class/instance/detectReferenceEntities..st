as yet unclassified
detectReferenceEntities: resourceEntity

	^ (self getReferenceContainers: resourceEntity) flatten collect: [
		  :eachReferenceContainer |
		  self getReferenceEntity: eachReferenceContainer ]