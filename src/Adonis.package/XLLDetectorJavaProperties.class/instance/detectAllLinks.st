as yet unclassified
detectAllLinks
	self getHostContainers do: [ :eachHostContainer | 
			(self getHostEntities: eachHostContainer)
				collect: [ :eachHostEntity |
					self detectedLinks add: (self getLink: eachHostEntity ).
				 ]. 
		].