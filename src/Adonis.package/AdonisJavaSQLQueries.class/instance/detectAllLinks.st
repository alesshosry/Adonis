as yet unclassified
detectAllLinks
 	self getReferenceContainers do: [ :eachReferenceContainer | 
			(self getReferenceEntities: eachReferenceContainer )
				collect: [ :eachReferenceEntity |
					self detectedLinks addAll: (self getLink: eachReferenceEntity ).
				 ]. 
		].