as yet unclassified
getReferenceEntities: referenceContainer

	| myLiteralString key |
	"Here I have to extract tables between keys."
	myLiteralString := (referenceContainer at: 'myLiteralString') primitiveValue.
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

	^ {self buildReferenceEntityFor: key using: myLiteralString }