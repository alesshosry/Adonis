as yet unclassified
getResourceContainers: referenceEntity

	^ self resourceContainers collect: [ :each |
		each = referenceEntity at: 'elementName' "now here we shoud do some computation"	
	 ]