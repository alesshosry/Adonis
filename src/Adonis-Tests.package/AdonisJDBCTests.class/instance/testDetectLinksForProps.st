tests
testDetectLinksForProps

	|xllDetector aLink |
	
	xllDetector := AdonisJavaProperties new.
	xllDetector fillMainModel: mainModel. 
	
	xllDetector detectAllLinks.
	self assert: xllDetector detectedLinks isNotNil.
	
	aLink := xllDetector detectedLinks detect: [ :eachLink | eachLink referenceEntity elementName = 'password' ] ifNone: [self fail ].

	self assert: aLink resourceEntity isNotNil .
	self assert: aLink referenceEntity isNotNil .
	self assert: aLink resourceLanguage isNotNil . 
	self assert: aLink referenceLanguage isNotNil . 
	self assert: aLink framework isNotNil . 
	
	