as yet unclassified
testExtractWildcards 

	|xllDetector referencePattern referenceModel xllGWTLinks |
	
	xllDetector := XLLDetectorGWT new.
	xllDetector mainModel: mainModel.
	referencePattern := xllDetector fillReferencePattern.	
	referenceModel := xllDetector fillReferenceModel. 
	  
	xllGWTLinks := xllDetector extractWildcardsFromPattern: referencePattern ofModel: referenceModel.
	
	self assert: xllGWTLinks isNotNil.
		 
		
	self assert: ((xllGWTLinks collect: [ :l | l javaClassName ]) indexOf: 'HelloGWTWidget') > 0 .
	self assert: ((xllGWTLinks collect: [ :l | l javaClassName ]) indexOf: 'AboutDialog') > 0 .
	
	self assert: ((xllGWTLinks collect: [ :l | l javaClassFullPath  ]) indexOf: 'AboutDialog.java') > 0 .
	self assert: ((xllGWTLinks collect: [ :l | l javaClassFullPath ]) indexOf: 'HelloGWTWidget.java') > 0 .
	
	self assert: ((xllGWTLinks flatCollect: [ :l | l handlers collect: [ :h | h attributeName  ] ]) indexOf: 'closeButton') > 0 .
	self assert: ((xllGWTLinks flatCollect: [ :l | l handlers collect: [ :h | h attributeName  ] ]) indexOf: 'deleteButton') > 0 .
	self assert: ((xllGWTLinks flatCollect: [ :l | l handlers collect: [ :h | h attributeName  ] ]) indexOf: 'aboutLink') > 0 .
	self assert: ((xllGWTLinks flatCollect: [ :l | l handlers collect: [ :h | h attributeName  ] ]) indexOf: 'updateButton') > 0 .