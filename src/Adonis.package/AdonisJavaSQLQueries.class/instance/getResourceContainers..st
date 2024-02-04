as yet unclassified
getResourceContainers: referenceEntity

	^ self resourceContainers collect: [ :each |
		(referenceEntity at: 'elementName') includesSubstring: ' ', each elementName name, ' '
	 ]