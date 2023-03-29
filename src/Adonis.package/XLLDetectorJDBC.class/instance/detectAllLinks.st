as yet unclassified
detectAllLinks

	|javaPropsDetector javaSQLDetector|
	
	javaPropsDetector := XLLDetectorJavaProperties new.
	javaSQLDetector := XLLDetectorJavaSQL new.
	javaPropsDetector mainModel: self mainModel.
	javaSQLDetector mainModel: self mainModel.
	
	self detectedLinks: javaPropsDetector detectJavaPropertiesLinks detectedLinks .
	self detectedLinks addAll: javaSQLDetector detectJavaSQLLinks detectedLinks.