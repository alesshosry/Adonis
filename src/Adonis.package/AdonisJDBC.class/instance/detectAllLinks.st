as yet unclassified
detectAllLinks

	|javaPropsDetector javaSQLDetector|
	
	javaPropsDetector := AdonisJavaProperties new.
	javaSQLDetector := AdonisJavaSQL new.
	javaPropsDetector mainModel: self mainModel.
	javaSQLDetector mainModel: self mainModel.
	
	self detectedLinks: javaPropsDetector detectJavaPropertiesLinks detectedLinks .
	self detectedLinks addAll: javaSQLDetector detectJavaSQLLinks detectedLinks.