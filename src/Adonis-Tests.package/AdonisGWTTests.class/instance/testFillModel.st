as yet unclassified
testFillModel

	| xllDetector |
	"referenceModel is the same for one class or for all classes, beacause reference pattern starts searching from _>allModelClassses"
	xllDetector := AdonisGWT new.
	xllDetector fillMainModel: mainModel.
	
	self assert: mainModel isNotNil.
	self assert: mainModel allModelClasses size equals: 15.
	self assert: mainModel allAnnotationInstances size equals: 86.
	self assert: mainModel allAnnotationTypes size equals: 70