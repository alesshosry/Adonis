accessing
detectAllLinksOfExternalAgent: externalAgent

	| myDetector |
	externalAgent = 'GWT' ifTrue: [  myDetector := AdonisGWT new ].
	externalAgent = 'JDBC' ifTrue: [  myDetector := AdonisJavaSQL new ]. 
	myDetector mainModel: self mainModel.
	
	self detectedLinks: myDetector detectAllLinks detectedLinks .
	
