as yet unclassified
defineJavaAnnotationNameWithoutAttributes: aName 

 ^ FamixJavaModel % { 
	#'allAnnotationTypes>_' <=> FamixJavaAnnotationType % { 
		"#'name' <=> aName asSymbol. "
		#'name' <=> ByteString % {
			#'value' <=> aName asSymbol.
		} as: 'annotationKey'.  
		#'instances' <=> FamixJavaAnnotationInstance  % { 
			#'annotatedEntity>name' <=> #'@EntityName'. 
			#'annotatedEntity>parentType>name' <=> #'@ClassName'.
			#'annotatedEntity>sourceAnchor>fileName' <=> #'@FileName'.
		} as: 'annotatedAttribute'.
	}.
}.