tests
testDetectGWTLinks

	| myDetector |
	myDetector := Adonis new. 
	myDetector fillMainModel: (MooseModel root allModels at: 1). "To be changed !!!!!!!!!!!!!!!!!!!!!!!!!"
	myDetector detectAllLinksOfFramework: 'GWT'.

	self assert: myDetector detectedLinks isNotNil