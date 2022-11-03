tests
testFillMainModel

	| xllDetector |
	xllDetector := XLLDetectorJDBC new.
	xllDetector fillMainModel: (MooseModelRoot root allModels at: 1). "To bechnaged  !!!!!!!!!!!!!!!!!!!!!!"

	self assert: xllDetector mainModel isNotNil.
	