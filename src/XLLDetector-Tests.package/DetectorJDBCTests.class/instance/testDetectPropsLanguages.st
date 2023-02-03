tests
testDetectPropsLanguages

	|xllDetector|
	
	xllDetector := XLLDetectorJavaProperties new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectJavaPropertiesLinks.
	
	self assert: xllDetector detectedLinks anyOne foreignLanguage equals: 'Properties'.
	self assert: xllDetector detectedLinks anyOne hostLanguage equals: 'Java'.
	
	
	