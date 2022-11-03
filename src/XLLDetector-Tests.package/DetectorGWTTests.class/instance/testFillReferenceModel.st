as yet unclassified
testFillReferenceModel

	| xllDetector referenceModel |
	"referenceModel is the same for one class or for all classes, beacause reference pattern starts searching from _>allModelClassses"
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel.
	referenceModel := xllDetector fillReferenceModel.

	self assert: referenceModel isNotNil.
	self assert: referenceModel allModelClasses size equals: 22.
	self assert: referenceModel allAnnotationInstances size equals: 57.
	self assert: referenceModel allAnnotationTypes size equals: 8