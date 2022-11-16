as yet unclassified
collectBindingsfromJavaClasses

	"References are annotations"
	
	| xllPattern bindings |
	
	bindings := OrderedCollection new.
	 
	xllPattern := XLLJavaPatterns new defineJavaAnnotationNameWithAttributes: 'UiHandler'.
	bindings addAll: (xllPattern collectBindings: { #annotationKey. #EntityName. #ClassName. #FileName. } for: mainModel) . 
	
	bindings do: [ :eachBinding |  
		|attributeName|
		attributeName := eachBinding at: 'EntityName'.
		attributeName := attributeName reject: [ :c | c= $" ].
		eachBinding at: 'EntityName' put: attributeName . 
	].
	
	xllPattern := XLLJavaPatterns new defineJavaAnnotationNameWithoutAttributes: 'UiField'.
	bindings addAll: (xllPattern collectBindings: { #annotationKey. #EntityName. #ClassName. #FileName. } for: mainModel) . 	
	
	^ bindings.
	
	
	