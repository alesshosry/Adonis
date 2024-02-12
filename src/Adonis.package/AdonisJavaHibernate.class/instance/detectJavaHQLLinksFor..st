as yet unclassified
detectJavaHQLLinksFor: aModel 
	
	|javaHQLDetector|
	
	javaHQLDetector := AdonisJavaHQL new.
	javaHQLDetector mainModel: aModel.
	javaHQLDetector detectAllLinks .
	^ javaHQLDetector . 