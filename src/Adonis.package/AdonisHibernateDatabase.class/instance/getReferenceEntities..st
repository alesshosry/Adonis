as yet unclassified
getReferenceEntities: eachReferenceContainer

	|parsedReferenceContainer|
	
	parsedReferenceContainer := self parseXMLResourceFile: eachReferenceContainer. 
	
	^ (self extractReferenceEntitiesFor: parsedReferenceContainer) collect: [
		  :eachBinding | 
		  self buildReferenceEntityFor: 'table'		   
					using:  (eachBinding at: 'attributeValue1') 
			]