tests
testDetectPropsLanguages

	|xllDetector|
	
	xllDetector := AdonisJavaProperties new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectAllLinks.
	
	self assert: xllDetector detectedLinks anyOne resourceLanguage equals: 'Properties'.
	self assert: xllDetector detectedLinks anyOne referenceLanguage equals: 'Java'.
	
	
	