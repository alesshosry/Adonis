as yet unclassified
collectBindingsfromJavaClassesRule
	"References are annotations"

	| xllPattern1 xllPattern2 bindings |
	bindings := OrderedCollection new.

	xllPattern1 := AdonisJavaPatterns new
		               defineJavaAnnotationNameWithAttributes: 'UiHandler'.
	xllPattern2 := AdonisJavaPatterns new
		               defineJavaAnnotationNameWithoutAttributes: 'UiField'.	
	bindings addAll: (xllPattern1
			 collectBindings:
				 { #annotatedAttribute. #annotationKey. #EntityName. #ClassName.
				 #FileName }
			 for: mainModel).

	bindings do: [ :eachBinding |
		| attributeName |
		attributeName := eachBinding at: 'EntityName'.
		attributeName := attributeName reject: [ :c | c = $" ].
		eachBinding at: 'EntityName' put: attributeName ].
	
	bindings addAll: (xllPattern2
			 collectBindings:
				 { #annotatedAttribute. #annotationKey. #EntityName. #ClassName.
				 #FileName }
			 for: mainModel).

	^ bindings