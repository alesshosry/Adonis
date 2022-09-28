as yet unclassified
testExtractWildCardsForClass

	| xllDetector referencePattern referenceModel javaVariables enitiesNames entitiesTypes| 
	
	xllDetector := XLLDetectorGWT new.
	xllDetector mainModel: mainModel.
	referencePattern := xllDetector fillReferencePatternForClass: xllGWTTestObject javaClassName.	
	referenceModel := xllDetector fillReferenceModel. 
	  
	javaVariables := (xllDetector extractWildcardsFromPattern: referencePattern ofModel: referenceModel forClass: xllGWTTestObject javaClassName) first.
	 
	self assert: javaVariables fields isNotNil.
	self assert: javaVariables handlers isNotNil.
	
	enitiesNames := javaVariables fields collect: [ :f | f javaEntityName ].
	self assert: (enitiesNames indexOf: 'nameTextBox') > 0. 
	
	entitiesTypes := javaVariables fields collect: [ :f | f javaEntityType ].
	self assert: (entitiesTypes indexOf: 'Anchor') > 0. 
	
	 
	 
	
	
		 
	
	 