as yet unclassified
detectAllLinks
 	self getResourceContainers do: [ :eachResourceContainer | 
			(self getResourceEntities:  eachResourceContainer )
				collect: [ :eachResourceEntity |
					self detectedLinks addAll: (self getLink: eachResourceEntity ).
				 ]. 
		].