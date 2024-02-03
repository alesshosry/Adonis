as yet unclassified
getReferenceEntities: eachReferenceContainer

	|parsedReferenceContainer|
	
	parsedReferenceContainer := self parseXMLResourceFile: eachReferenceContainer. 
	
	^ (self extractReferenceEntitiesFor: parsedReferenceContainer) collect: [
		  :eachBinding | 
		  self buildReferenceEntityFor: 'class'		   
					using:  (eachBinding at: 'attributeValue2') 
			]