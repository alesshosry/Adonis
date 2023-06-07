tests
testClientClassesAreFAST 

	| xllDetector |
	xllDetector := AdonisRMI new.
	xllDetector fillClientModel: clientModel .

	self assert: xllDetector clientModel isNotNil. 
	xllDetector clientModel do: [ :each |
		self assert: each class equals: FASTJavaModel.
	].