tests
testHostContainers
	
	self assert: detector hostContainers size equals: 2.
	self assert: (detector hostContainers anySatisfy: [ :astMethodNode | astMethodNode selector = 'primitiveLog10Sample'  ]).
	self assert: (detector hostContainers anySatisfy: [ :astMethodNode | astMethodNode selector = 'primitiveTimesTwoPowerSample' ])
	