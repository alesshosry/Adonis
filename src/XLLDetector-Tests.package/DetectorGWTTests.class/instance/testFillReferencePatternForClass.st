as yet unclassified
testFillReferencePatternForClass

	| xllDetector referencePattern |
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel.

	referencePattern := xllDetector fillReferencePatternForClass:
		                    xllGWTTestObject javaClassName.

	self assert: referencePattern isNotNil.
	self assert: referencePattern className equals: 'MatcherMooseObject'