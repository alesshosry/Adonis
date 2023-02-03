as yet unclassified
collectBindingsfromJavaClasses

	"References are annotations"
	
	| xllPattern bindings |
	
	bindings := OrderedCollection new.
	 
	xllPattern := XLLJavaPatterns new defineJavaAnnotationNameWithAttributes: 'UiHandler'.
	bindings addAll: (xllPattern collectBindings: { #annotatedAttribute . #annotationKey. #EntityName. #ClassName. #FileName. } for: mainModel) . 
	
	bindings do: [ :eachBinding |  
		|attributeName|
		attributeName := eachBinding at: 'EntityName'.
		attributeName := attributeName reject: [ :c | c= $" ]. "copyFrom: 2 to: (attributeName size -1)"
		eachBinding at: 'EntityName' put: attributeName . 
	].
	
	xllPattern := XLLJavaPatterns new defineJavaAnnotationNameWithoutAttributes: 'UiField'.
	bindings addAll: (xllPattern collectBindings: { #annotatedAttribute . #annotationKey. #EntityName. #ClassName. #FileName. } for: mainModel) . 	
	
	^ bindings.
	
	
	