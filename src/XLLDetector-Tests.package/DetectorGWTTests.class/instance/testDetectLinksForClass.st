as yet unclassified
testDetectLinksForClass

	| xllDetector |
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel.
	xllDetector detectLinksForClass: xllGWTTestObject javaClassName.

	self assert: xllDetector gwtLinks size = 1.
	self assert: xllDetector gwtLinks first fields size = 11.
	self assert: xllDetector gwtLinks first handlers size = 5.
	self
		assert: xllDetector gwtLinks first javaClassName
		equals: 'HelloGWTWidget'.
	self
		assert: xllDetector gwtLinks first javaClassFullPath
		equals: 'HelloGWTWidget.java'