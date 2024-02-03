as yet unclassified
getResourceContainers: aReferenceEntity 

	"I have to pay attention, not all projects mention the complete url to the class name" 
	
	|className|
	
	className := aReferenceEntity elementName.
	
	(className includesSubstring: '.') ifTrue:  [
		className := (className splitOn: '.' ) last. 
	].

	^ (self mainModel allModelClasses select: [ :each | each name = className ]) asOrderedCollection  