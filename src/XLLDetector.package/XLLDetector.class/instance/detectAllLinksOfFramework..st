accessing
detectAllLinksOfFramework: framework

	| myDetector |
	framework = 'GWT' ifTrue: [  myDetector := XLLDetectorGWT new ].
	framework = 'JDBC' ifTrue: [  myDetector := XLLDetectorJDBC new ]. 
	myDetector mainModel: self mainModel.
	
	self detectedLinks: myDetector detectAllLinks detectedLinks .
	
