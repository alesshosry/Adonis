tests
testDetectPropsLanguages

	|xllDetector|
	
	xllDetector := AdonisJavaSQL new.
	xllDetector fillMainModel: mainModel.
	xllDetector resourceContainers: ((sqlModel allWithType: FamixSQLTable) collect: [:each | each name ]).
	xllDetector detectAllExternalDependencies.
	
	self assert: xllDetector detectedExternalDependencies anyOne resourceLanguage equals: 'SQL'.
	self assert: xllDetector detectedExternalDependencies anyOne referenceLanguage equals: 'Java'.
	
	
	