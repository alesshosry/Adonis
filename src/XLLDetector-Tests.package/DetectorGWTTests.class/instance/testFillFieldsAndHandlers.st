as yet unclassified
testFillFieldsAndHandlers

	| xllDetector referenceModel referencePattern xllLinks|
	
	xllDetector := XLLDetectorGWT new.
	xllDetector mainModel: mainModel .
	referenceModel := xllDetector fillReferenceModel. 
	referencePattern := xllDetector fillReferencePattern .
	xllLinks := xllDetector extractWildcardsFromPattern: referencePattern ofModel: referenceModel.
	
	xllDetector fillFieldsAndHandlers: xllLinks .
		
	self assert: xllLinks isNotNil .	
	self assert: (xllLinks flatCollect: [ :c | c fields ]) size = 12 .
	self assert: (xllLinks flatCollect: [ :c | c handlers ]) size = 6 .
	 