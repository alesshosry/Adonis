tests
testRemoteInheritance
	
	| xllDetector |
	xllDetector := AdonisRMI new.
	xllDetector fillMainModel: mainModel.

	self assert: xllDetector mainModel isNotNil. 
	self assert: (xllDetector mainModel allInheritanceDefinitions select: [ :each | each superclass name = 'Remote' ]) size > 0.