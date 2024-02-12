as yet unclassified
getResourceContainers: aReferenceEntity

	^ (resourceContainers select: [ :each | each name = aReferenceEntity elementName ]) asOrderedCollection  