tests
testFillMainModel 

	| xllDetector |
	xllDetector := AdonisRMI new.
	xllDetector fillMainModel: mainModel.

	self assert: xllDetector mainModel isNotNil.
	self assert: xllDetector mainModel allModelMethods size equals: 7.
	self assert: xllDetector mainModel allModelPackages size equals: 1. 
	self assert: xllDetector mainModel allModelClasses size equals: 3.