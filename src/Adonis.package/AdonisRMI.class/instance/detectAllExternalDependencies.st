as yet unclassified
detectAllExternalDependencies
	self getResourceContainers do: [ :eachResourceContainer | 
			(self getResourceEntities:  eachResourceContainer )
				collect: [ :eachResourceEntity |
					self detectedExternalDependencies addAll: (self getExternalDependency: eachResourceEntity ).
				 ]. 
		].