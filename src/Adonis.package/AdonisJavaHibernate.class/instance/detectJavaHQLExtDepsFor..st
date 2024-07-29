as yet unclassified
detectJavaHQLExtDepsFor: aModel 
	
	|javaHQLDetector|
	
	javaHQLDetector := AdonisHBMFilesJava new.
	javaHQLDetector mainModel: aModel.
	javaHQLDetector detectAllExternalDependencies .
	^ javaHQLDetector . 