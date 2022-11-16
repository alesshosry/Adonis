as yet unclassified
testFillModel

	| xllDetector |
	"referenceModel is the same for one class or for all classes, beacause reference pattern starts searching from _>allModelClassses"
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel.
	
	self assert: mainModel isNotNil.
	self assert: mainModel allModelClasses size equals: 22.
	self assert: mainModel allAnnotationInstances size equals: 57.
	self assert: mainModel allAnnotationTypes size equals: 8