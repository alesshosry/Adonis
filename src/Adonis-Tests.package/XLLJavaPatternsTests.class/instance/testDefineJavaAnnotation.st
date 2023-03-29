tests
testDefineJavaAnnotation

	| pattern |
	pattern := XLLJavaPatterns new defineJavaAnnotationNameWithoutAttributes: 'UiField'.
	
	self
		assert: (pattern collectBindings: { #'annotatedAttribute' } for: mainGWTModel) size
		equals: 12.
		
	
	pattern := XLLJavaPatterns new defineJavaAnnotationNameWithAttributes: 'UiHandler'.
	self
		assert: (pattern collectBindings: { #'annotatedAttribute' } for: mainGWTModel) size
		equals: 6.