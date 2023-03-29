tests
testDetectPropsLanguages

	|xllDetector|
	
	xllDetector := AdonisJavaProperties new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectAllLinks.
	
	self assert: xllDetector detectedLinks anyOne foreignLanguage equals: 'Properties'.
	self assert: xllDetector detectedLinks anyOne hostLanguage equals: 'Java'.
	
	
	