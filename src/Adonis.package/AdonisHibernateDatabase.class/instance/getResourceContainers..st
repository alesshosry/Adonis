as yet unclassified
getResourceContainers: aReferenceEntity

	^ (resourceContainers select: [ :each | each  = aReferenceEntity elementName ]) asOrderedCollection  