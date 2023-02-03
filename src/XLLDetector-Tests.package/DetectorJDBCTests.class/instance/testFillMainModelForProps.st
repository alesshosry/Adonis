tests
testFillMainModelForProps

	| xllDetector |
	xllDetector := XLLDetectorJavaProperties new.
	xllDetector fillMainModel: mainModel.

	self assert: xllDetector mainModel isNotNil.
	