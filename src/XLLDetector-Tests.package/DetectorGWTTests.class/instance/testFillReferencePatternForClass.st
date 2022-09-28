as yet unclassified
testFillReferencePatternForClass

	| xllDetector referencePattern |
	
	xllDetector := XLLDetectorGWT new.
	xllDetector mainModel: mainModel .
	
	referencePattern := xllDetector fillReferencePatternForClass: xllGWTTestObject javaClassName .
		
	self assert: referencePattern isNotNil .
	self assert: referencePattern className equals: 'MatcherMooseObject'.
	
	
		 
	
	 