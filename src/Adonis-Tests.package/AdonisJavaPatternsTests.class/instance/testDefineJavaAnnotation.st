tests
testDefineJavaAnnotation

	| pattern |
	pattern := AdonisJavaPatterns new defineJavaAnnotationNameWithoutAttributes: 'UiField'.
	
	self
		assert: (pattern collectBindings: { #'annotatedAttribute' } for: mainGWTModel) size
		equals: 12.
		
	
	pattern := AdonisJavaPatterns new defineJavaAnnotationNameWithAttributes: 'UiHandler'.
	self
		assert: (pattern collectBindings: { #'annotatedAttribute' } for: mainGWTModel) size
		equals: 6.