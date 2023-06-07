as yet unclassified
defineJavaInheritanceFor: superInterfaceName  

	^ FamixJavaModel % { 
	 #'allTypes>_' <=>  FamixJavaInterface % { 
		"#'isInterface' <=> true."
		#'superInheritances>superclass*>name' <=> superInterfaceName .
		#'isStub' <~=> true.
		"#'name' <=> #'@ServerClassName'"
	} as: 'FamixJavaInterface'  .
}.