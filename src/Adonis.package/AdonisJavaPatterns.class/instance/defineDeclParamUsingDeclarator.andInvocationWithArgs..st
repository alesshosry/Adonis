as yet unclassified
defineDeclParamUsingDeclarator: name andInvocationWithArgs: method

	^ FASTJavaModel   % {    	 
		#'allModelEntities' <=>  FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> #'@anyType'.	
			#'declarators>famixVariable>name' <=> name asSymbol. 
			#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'.
			#'declarators>expression' <=> FASTJavaMethodInvocation % {  
				#'name' <=> method asSymbol .
				#'arguments>primitiveValue' <=> #'@anyArguments'. 	
			}	
		}.
	}.