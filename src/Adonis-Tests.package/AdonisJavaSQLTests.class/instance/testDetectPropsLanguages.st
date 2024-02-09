tests
testDetectPropsLanguages

	|xllDetector|
	
	xllDetector := AdonisJavaSQL new.
	xllDetector fillMainModel: mainModel.
	xllDetector resourceContainers: ((sqlModel allWithType: FamixSQLTable) collect: [:each | each name ]).
	xllDetector detectAllLinks.
	
	self assert: xllDetector detectedLinks anyOne resourceLanguage equals: 'SQL'.
	self assert: xllDetector detectedLinks anyOne referenceLanguage equals: 'Java'.
	
	
	