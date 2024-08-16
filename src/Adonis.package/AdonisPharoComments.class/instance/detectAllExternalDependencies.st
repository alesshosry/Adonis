as yet unclassified
detectAllExternalDependencies

	self getReferenceContainers do: [ :eachHostContainer |
		(self getReferenceEntities: eachHostContainer) collect: [
			:eachHostEntity |
			self detectedExternalDependencies add:
				(self getExternalDependency: eachHostEntity) ] ]