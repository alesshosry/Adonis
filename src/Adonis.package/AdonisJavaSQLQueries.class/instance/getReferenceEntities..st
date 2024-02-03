as yet unclassified
getReferenceEntities: referenceContainer

		||
		
		^ self
		  buildReferenceEntityFor: (referenceContainer at: 'myLiteralString')
		  using: (referenceContainer at: 'key')