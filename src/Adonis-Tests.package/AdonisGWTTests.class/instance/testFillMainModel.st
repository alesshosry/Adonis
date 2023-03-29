as yet unclassified
testFillMainModel

	| xllDetector |
	xllDetector := AdonisGWT new.
	xllDetector fillMainModel: mainModel.

	self assert: xllDetector mainModel isNotNil.
	self assert: xllDetector mainModel allModelMethods size equals: 87.
	self assert: xllDetector mainModel allModelPackages size equals: 9