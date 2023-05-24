as yet unclassified
getReferenceEntity: eachReferenceContainer
	^ self buildReferenceEntityFor: (eachReferenceContainer at:'methodInvocation') receiver famixVariable name  using: eachReferenceContainer   