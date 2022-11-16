as yet unclassified
testDetectLinks

	| xllDetector |
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectAllLinks.

	self assert: xllDetector detectedLinks size = 2.
	self assert:
		(xllDetector detectedLinks flatCollect: [ :c | c references ]) size = 18.
	self assert:
		(xllDetector detectedLinks flatCollect: [ :c | c definitions ]) size = 18.
	"self assert:
		((xllDetector detectedLinks collect: [ :c | c javaClassName ]) indexOf:
			 'AboutDialog') > 0"