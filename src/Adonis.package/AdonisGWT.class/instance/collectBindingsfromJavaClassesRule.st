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
	"bindings do: [ :e |
		 ]."
	bindings do: [ :eachBinding |
		| attributeName |
		attributeName := eachBinding at: 'EntityName' .
		(self isCollectionString: attributeName)
			ifFalse: [
				attributeName := attributeName reject: [ :c | c = $" ].
				eachBinding at: 'EntityName' put: attributeName ]
			ifTrue: [
			self buildBindingsDictionaryFrom: eachBinding ofBindings: bindings.
			"bindings remove: eachBinding is not working properly; instead it is removing the object and adding other ones with double quotes at the beging and at the end with a single reference embedded in the value of the annotation; So what I did is rejecting all the bindings which entityName has {"
			]
		 ]. 
	bindings := bindings reject: [ :each |( each at: 'EntityName') includes: ${ ].
	
	bindings addAll: (xllPattern2
			 collectBindings:
				 { #annotatedAttribute. #annotationKey. #EntityName. #ClassName.
				 #FileName }
			 for: mainModel).

	^ bindings