as yet unclassified
getReferenceEntity: eachReferenceContainer

	^ self
		  buildReferenceEntityFor: 'select'
		  using: (eachReferenceContainer at: 'myLiteralString')  "to find a way to distinguish select from update delete and insert"