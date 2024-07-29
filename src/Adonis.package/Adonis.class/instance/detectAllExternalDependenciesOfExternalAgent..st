accessing
detectAllExternalDependenciesOfExternalAgent: externalAgent

	| myDetector |
	externalAgent = 'GWT' ifTrue: [  myDetector := AdonisGWT new ].
	externalAgent = 'JDBC' ifTrue: [  myDetector := AdonisJavaSQL new ]. 
	myDetector mainModel: self mainModel.
	
	self detectedExternalDependencies: myDetector detectAllExternalDependencies detectedExternalDependencies .
	
