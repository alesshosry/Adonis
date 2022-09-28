as yet unclassified
fillReferencePatternForClass: className
		 
		| pattern |
		
		" same as fillReferencePattern: but for a specific class"
		
   pattern := FamixJavaModel  % {    
		#'allModelClasses>_' <=> FamixJavaClass % { 
			#'name' <=> className asSymbol.
			#'attributes' <=> FamixJavaAttribute  % {
				#'annotationInstances'<=> FamixJavaAnnotationInstance % {
					" #'annotationType>name' <=> #'@TypeName'."
					#'annotatedEntity>name' <=> #'@EntityName'. 
				}.
				#'declaredType>name' <=> #'@DeclaredType'.
				#'sourceAnchor' <=> FamixJavaIndexedFileAnchor % {
					"#'fileName>asFileReference>path>basename' <=> #'@SourceFileName'. "
					#'fileName' <=> #'@SourceFilePath'.
				}. 
			}. 
			#'methods' <=> FamixJavaMethod % {
				#'annotationInstances'<=> FamixJavaAnnotationInstance % {
					"#'annotationType>name' <=> #'@MethodAnnotationName'."
					#'annotatedEntity>name' <=> #'@MethodName'. 
					#'attributes>value>value'<=> #'@AttributeName'. 
				}. 
				#'parameters>declaredType>name' <=> #'@EventType'. 
			}.
		}.		 
	}.  
				
		^ pattern.