as yet unclassified
testFillDefinitionPattern 

	| xllDetector defenitionPattern |
	
	xllDetector := XLLDetectorGWT new.	
	defenitionPattern := xllDetector fillDefinitionPatternWithAttribute: 'contentPanel' andType: 'ContentPanel' .
	 
	self assert: defenitionPattern isNotNil .
	
	
		 
	
	 