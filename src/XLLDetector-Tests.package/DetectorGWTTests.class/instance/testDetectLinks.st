as yet unclassified
testDetectLinks

	| xllDetector |
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectLinks.

	self assert: xllDetector gwtLinks size = 2.
	self assert:
		(xllDetector gwtLinks flatCollect: [ :c | c fields ]) size = 12.
	self assert:
		(xllDetector gwtLinks flatCollect: [ :c | c handlers ]) size = 6.
	self assert:
		((xllDetector gwtLinks collect: [ :c | c javaClassName ]) indexOf:
			 'AboutDialog') > 0