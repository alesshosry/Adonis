tests
testFillClientModel  

	| xllDetector |
	xllDetector := AdonisRMI new.
	xllDetector fillClientModel: clientModel .

	self assert: xllDetector clientModel isNotNil.
	self assert: xllDetector clientModel class equals: OrderedCollection .
	self assert: xllDetector clientModel size equals: 3 .
	
	
	
	