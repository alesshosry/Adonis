as yet unclassified
testDetectLinks

	| xllDetector |
	xllDetector := AdonisGWT new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectAllExternalDependencies.

	self assert: xllDetector detectedExternalDependencies size equals: 18.
	self assert: xllDetector detectedExternalDependencies anyOne referenceEntity isNotNil .
	self assert: xllDetector detectedExternalDependencies anyOne resourceEntity isNotNil .
	self assert: xllDetector detectedExternalDependencies anyOne referenceEntity isNotNil .
	self assert: xllDetector detectedExternalDependencies anyOne resourceEntity  element className equals: 'XMLAttribute' .
	self assert: xllDetector detectedExternalDependencies anyOne referenceLanguage equals: 'Java' .