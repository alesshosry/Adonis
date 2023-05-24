as yet unclassified
detectReferenceEntities: resourceEntity
	
	^ (self getReferenceContainers: resourceEntity element) collect: [ :eachReferenceContainer | 
		self getReferenceEntity: eachReferenceContainer.
		 ]
	