tests
testDefineJavaAnnotation

	| pattern |
	pattern := XLLJavaPatterns new defineJavaAnnotationNameWithoutAttributes: 'UiField'.
	
	self
		assert: (pattern collectBindings: { #'annotatedAttribute' } for: (XLLGWTTestObject new generateMooseModelFromMSE)) size
		equals: 12.
		
	
	pattern := XLLJavaPatterns new defineJavaAnnotationNameWithAttributes: 'UiHandler'.
	self
		assert: (pattern collectBindings: { #'annotatedAttribute' } for: (XLLGWTTestObject new generateMooseModelFromMSE)) size
		equals: 6.