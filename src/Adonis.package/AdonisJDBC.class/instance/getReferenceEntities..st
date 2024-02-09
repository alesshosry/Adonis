as yet unclassified
getReferenceEntities: referenceContainer

	| myLiteralString key |
	
	"extracting tables"
	
	myLiteralString := (referenceContainer at: 'myLiteralString') primitiveValue.
	key := referenceContainer at: 'key'.

	
	key = 'join'
		ifFalse: [
			"in case the main key is select for example, we have to remove everything after join to split keys and find reference entitie for select only"
			myLiteralString := self
				                   cutUnnecessaryPartOfTheQueryAfter: 'join'
				                   for: myLiteralString ]
		ifTrue: [  
			"here we are taking the part with join only to find its references"
			myLiteralString := self
				                   cutUnnecessaryPartOfTheQueryBefore: 'join'
				                   for: myLiteralString 
			].

	"here i  have to split tables and find "
	^ {self buildReferenceEntityFor: key using: myLiteralString }