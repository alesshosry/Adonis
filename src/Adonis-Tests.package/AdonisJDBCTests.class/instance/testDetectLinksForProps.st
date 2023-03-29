tests
testDetectLinksForProps

	|xllDetector aLink |
	
	xllDetector := AdonisJavaProperties new.
	xllDetector fillMainModel: mainModel. 
	
	xllDetector detectAllLinks.
	self assert: xllDetector detectedLinks isNotNil.
	
	aLink := xllDetector detectedLinks detect: [ :eachLink | eachLink hostEntity elementName = 'password' ] ifNone: [self fail ].

	self assert: aLink foreignEntity isNotNil .
	self assert: aLink hostEntity isNotNil .
	self assert: aLink foreignLanguage isNotNil . 
	self assert: aLink hostLanguage isNotNil . 
	self assert: aLink framework isNotNil . 
	
	