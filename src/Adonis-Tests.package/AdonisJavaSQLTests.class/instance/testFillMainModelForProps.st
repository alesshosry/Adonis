tests
testFillMainModelForProps

	| xllDetector |
	xllDetector := AdonisJavaSQL new.
	xllDetector fillMainModel: mainModel.

	self assert: xllDetector mainModel isNotNil.
	