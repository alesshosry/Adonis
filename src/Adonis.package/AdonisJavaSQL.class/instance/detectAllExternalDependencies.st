as yet unclassified
detectAllExternalDependencies
 	self getReferenceContainers do: [ :eachReferenceContainer | 
			(self getReferenceEntities: eachReferenceContainer )
				collect: [ :eachReferenceEntity |
					self detectedExternalDependencies addAll: (self getExternalDependency: eachReferenceEntity ).
				 ]. 
		].