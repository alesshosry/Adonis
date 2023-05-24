as yet unclassified
testDetectLinks

	| xllDetector |
	xllDetector := AdonisGWT new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectAllLinks.

	self assert: xllDetector detectedLinks size equals: 18.
	self assert: xllDetector detectedLinks anyOne referenceEntity isNotNil .
	self assert: xllDetector detectedLinks anyOne resourceEntity isNotNil .
	self assert: xllDetector detectedLinks anyOne referenceEntity isNotNil .
	self assert: xllDetector detectedLinks anyOne resourceEntity  element className equals: 'XMLAttribute' .
	self assert: xllDetector detectedLinks anyOne referenceLanguage equals: 'Java' .