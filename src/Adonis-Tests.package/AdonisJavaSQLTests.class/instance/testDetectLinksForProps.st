tests
testDetectLinksForProps

	|xllDetector aLink |
	
	xllDetector := AdonisJavaSQL new.
	xllDetector fillMainModel: mainModel. 
	xllDetector resourceContainers: ((sqlModel allWithType: FamixSQLTable) collect: [:each | each name ]).
	
	xllDetector detectAllExternalDependencies.
	self assert: xllDetector detectedExternalDependencies isNotNil.
	
	aLink := xllDetector detectedExternalDependencies detect: [ :eachLink | eachLink referenceEntity key = 'delete' ] ifNone: [self fail ].

	self assert: aLink resourceEntity isNotNil .
	self assert: aLink referenceEntity isNotNil .
	self assert: aLink resourceLanguage isNotNil . 
	self assert: aLink referenceLanguage isNotNil . 
	self assert: aLink externalAgent isNotNil . 
	
	