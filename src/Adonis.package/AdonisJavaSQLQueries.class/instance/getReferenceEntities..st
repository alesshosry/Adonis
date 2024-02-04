as yet unclassified
getReferenceEntities: referenceContainer

	| myLiteralString key |
	"Here I have to extract tables between keys."
	myLiteralString := referenceContainer at: 'myLiteralString'.
	key := referenceContainer at: 'key'.

	key = 'join'
		ifFalse: [
			myLiteralString := self
				                   cutUnnecessaryPartOfTheQueryAfter: 'join'
				                   for: myLiteralString ]
		ifTrue: [  
			myLiteralString := self
				                   cutUnnecessaryPartOfTheQueryBefore: 'join'
				                   for: myLiteralString 
			].

	^ self buildReferenceEntityFor: myLiteralString using: key