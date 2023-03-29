as yet unclassified
defineJavaAnnotationNameWithAttributes: aName 

 ^ FamixJavaModel % { 
	#'allAnnotationTypes>_' <=> FamixJavaAnnotationType % { 
		"#'name' <=> aName asSymbol. "
		#'name' <=> ByteString % {
			#'value' <=> aName asSymbol.
		} as: 'annotationKey'.  
		#'instances' <=> FamixJavaAnnotationInstance  % { 
			"#'annotatedEntity>name' <=> #'@EntityName'."
			#'attributes>value' <=> #'@EntityName'. 
			#'annotatedEntity>parentType>name' <=> #'@ClassName'.
			"#'declaredType>name' <=> #'@EntityType'."
			#'annotatedEntity>sourceAnchor>fileName' <=> #'@FileName'.
		} as: 'annotatedAttribute'.
	}.
}.