as yet unclassified
testFillReferencePattern

	| xllDetector referencePattern |
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel.

	referencePattern := xllDetector fillReferencePattern.

	self assert: referencePattern isNotNil.
	self assert: referencePattern className equals: 'MatcherMooseObject'