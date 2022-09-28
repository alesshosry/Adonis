as yet unclassified
fillReferencePattern
		 
		"Here is the reference pattern defined using MoTion."
		
		| pattern |
		
   pattern := FamixJavaModel  % {    
		#'allModelClasses>_' <=> FamixJavaClass % { 
			#'name' <=> #'@ClassName'.
			#'attributes' <=> FamixJavaAttribute  % {
				#'annotationInstances'<=> FamixJavaAnnotationInstance % { 
					#'annotatedEntity>name' <=> #'@EntityName'. 
				}.
				#'declaredType>name' <=> #'@DeclaredType'.
				#'sourceAnchor' <=> FamixJavaIndexedFileAnchor % { 
					#'fileName' <=> #'@SourceFilePath'.
				}. 
			}. 
			#'methods' <=> FamixJavaMethod % {
				#'annotationInstances'<=> FamixJavaAnnotationInstance % { 
					#'annotatedEntity>name' <=> #'@MethodName'. 
					#'attributes>value>value'<=> #'@AttributeName'. 
				}. 
				#'parameters>declaredType>name' <=> #'@EventType'. 
			}.
		}.		 
	}.  
				
		^ pattern.