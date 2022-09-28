as yet unclassified
testFillReferenceModelForClass

	| xllDetector referenceModel |
	
	xllDetector := XLLDetectorGWT new.
	xllDetector mainModel: mainModel . 
	referenceModel := xllDetector fillReferenceModel. 
	
	self assert: referenceModel isNotNil .
	self assert: (referenceModel allModelClasses size) equals: 22.
	self assert: (referenceModel allAnnotationInstances size) equals: 57.	
	self assert: (referenceModel allAnnotationTypes size) equals: 8.	 
	
	
		 
	
	 