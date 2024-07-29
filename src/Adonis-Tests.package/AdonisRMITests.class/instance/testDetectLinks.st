tests
testDetectLinks

	| xllDetector |
	xllDetector := AdonisRMI new.
	xllDetector fillMainModel: mainModel.	
	xllDetector fillClientModel: clientModel.
	xllDetector detectAllExternalDependencies.
	self assert: xllDetector detectedExternalDependencies size equals: 2.