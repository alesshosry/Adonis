as yet unclassified
getReferenceContainers

	^ (self class environment associations 
    select: [ :each | each value isClass and: [ (each value comment beginsWith: 'Please comment me') not ] ] )
	
	