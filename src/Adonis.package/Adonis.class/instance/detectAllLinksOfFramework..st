accessing
detectAllLinksOfFramework: framework

	| myDetector |
	framework = 'GWT' ifTrue: [  myDetector := AdonisGWT new ].
	framework = 'JDBC' ifTrue: [  myDetector := AdonisJavaSQL new ]. 
	myDetector mainModel: self mainModel.
	
	self detectedLinks: myDetector detectAllLinks detectedLinks .
	
