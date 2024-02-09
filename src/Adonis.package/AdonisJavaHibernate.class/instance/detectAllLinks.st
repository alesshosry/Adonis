as yet unclassified
detectAllLinks
 	
	|javaHQLDetector javaSQLQueriesDetector|
	
	javaHQLDetector := AdonisJavaHQL new.
	javaHQLDetector mainModel: self mainModel.
	javaHQLDetector detectAllLinks .
 
	javaSQLQueriesDetector := AdonisJavaSQL new.
	javaSQLQueriesDetector fillMainModel: self mainModel.
	javaSQLQueriesDetector resourceContainers:( javaHQLDetector detectedLinks collect:[:each | each resourceEntity element name  ]).
	javaSQLQueriesDetector detectAllLinks.
	
	self detectedLinks add: javaHQLDetector detectedLinks.
	self detectedLinks add: javaSQLQueriesDetector detectedLinks.