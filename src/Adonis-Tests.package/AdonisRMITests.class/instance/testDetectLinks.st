tests
testDetectLinks

	| xllDetector |
	xllDetector := AdonisRMI new.
	xllDetector fillMainModel: mainModel.	
	xllDetector fillClientModel: clientModel.
	xllDetector detectAllLinks.

	self assert: xllDetector detectedLinks size = 2.