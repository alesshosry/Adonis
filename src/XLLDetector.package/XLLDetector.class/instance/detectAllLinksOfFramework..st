accessing
detectAllLinksOfFramework: framework

	| myDetector |
	framework = 'GWT' ifFalse: [ ^ self ].
	myDetector := XLLDetectorGWT new.
	myDetector mainModel: self mainModel. 
	myDetector detectLinks.
	self detectedLinks: myDetector detectedLinks.
	
