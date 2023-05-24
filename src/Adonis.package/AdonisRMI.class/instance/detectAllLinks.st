as yet unclassified
detectAllLinks
	self getResourceContainers do: [ :eachResourceContainer | 
			(self getResourceEntities:  eachResourceContainer )
				collect: [ :eachResourceEntity |
					self detectedLinks add: (self getLink: eachResourceEntity ).
				 ]. 
		].