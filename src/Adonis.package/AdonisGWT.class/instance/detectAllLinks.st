as yet unclassified
detectAllLinks

	self halt.
	self getReferenceContainers do: [ :eachHostContainer |
		(self getReferenceEntities: eachHostContainer) collect: [
			:eachHostEntity |
			self detectedLinks add: (self getLink: eachHostEntity) ] ]