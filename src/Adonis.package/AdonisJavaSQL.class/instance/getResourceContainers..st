as yet unclassified
getResourceContainers: referenceEntity

	^ self resourceContainers select: [ :each |
		(referenceEntity elementName) includesSubstring: ' ', each
	 ]