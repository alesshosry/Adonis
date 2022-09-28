tests
testDetectorCreation
	
	|myDetector|
	
	myDetector := XLLDetector new. 
	self assert: myDetector isNotNil 
