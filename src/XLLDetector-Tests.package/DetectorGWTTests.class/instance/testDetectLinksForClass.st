as yet unclassified
testDetectLinksForClass

	|xllDetector|
	xllDetector := XLLDetectorGWT new.
	xllDetector mainModel: mainModel.
	xllDetector detectLinksForClass: xllGWTTestObject javaClassName.
	
	self assert: xllDetector detectedLinks size = 1 .
 	self assert: xllDetector detectedLinks first fields size = 11 .
	self assert: xllDetector detectedLinks first handlers size = 5 .
	self assert: xllDetector detectedLinks first javaClassName equals: 'HelloGWTWidget' .
	self assert: xllDetector detectedLinks first javaClassFullPath equals: 'HelloGWTWidget.java' .
