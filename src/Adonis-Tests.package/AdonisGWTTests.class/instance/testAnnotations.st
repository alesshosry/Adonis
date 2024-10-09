as yet unclassified
testAnnotations

	| xllDetector bindings annotations|
	xllDetector := AdonisGWT new.
	xllDetector fillMainModel: mainModel.
	bindings := xllDetector collectBindingsfromJavaClassesRule .
	annotations := OrderedCollection new.
	bindings do: [ :eachBindingDict |
		annotations add: (eachBindingDict at: #annotationKey).
	].

	annotations removeDuplicates. 
	self assert: annotations size equals: 2.
	self assert: (annotations indexOf: 'UiField' ) > 0.
	self assert: (annotations indexOf: 'UiHandler' ) > 0.