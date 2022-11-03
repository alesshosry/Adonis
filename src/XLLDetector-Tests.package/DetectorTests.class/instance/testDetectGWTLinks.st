tests
testDetectGWTLinks

	| myDetector |
	myDetector := XLLDetector new.
	"myDetector fillMooseModel: (MooseModel root allModels at: 2)."
	myDetector fillMainModel: (MooseModel root allModels at: 2). "To be changed !!!!!!!!!!!!!!!!!!!!!!!!!"
	myDetector detectAllLinksOfFramework: 'GWT'.

	self assert: myDetector detectedLinks isNotNil