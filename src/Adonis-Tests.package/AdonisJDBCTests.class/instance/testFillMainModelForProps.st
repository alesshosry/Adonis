tests
testFillMainModelForProps

	| xllDetector |
	xllDetector := AdonisJDBC new.
	xllDetector fillMainModel: mainModel.

	self assert: xllDetector mainModel isNotNil.
	