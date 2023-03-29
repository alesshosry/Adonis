as yet unclassified
testDetectLinks

	| xllDetector |
	xllDetector := AdonisGWT new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectAllLinks.

	self assert: xllDetector detectedLinks size equals: 18.
	self assert: xllDetector detectedLinks anyOne hostEntity isNotNil .
	self assert: xllDetector detectedLinks anyOne foreignEntity isNotNil .
	self assert: xllDetector detectedLinks anyOne hostEntity isNotNil .
	self assert: xllDetector detectedLinks anyOne foreignEntity  element className equals: 'XMLAttribute' .
	self assert: xllDetector detectedLinks anyOne hostLanguage equals: 'Java' .