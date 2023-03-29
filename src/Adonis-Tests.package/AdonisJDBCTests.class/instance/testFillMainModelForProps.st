tests
testFillMainModelForProps

	| xllDetector |
	xllDetector := AdonisJavaProperties new.
	xllDetector fillMainModel: mainModel.

	self assert: xllDetector mainModel isNotNil.
	