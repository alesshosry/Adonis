as yet unclassified
defineDeclParam: type usingInvocationWithDefinedArgs: method 
	
	^ FASTJavaModel   % {    	 
		#'allModelEntities' <=>  FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> type asSymbol	.	
			#'declarators>famixVariable>name' <=> #'@anyDeclaratorName'. 
			#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'.
			#'declarators>expression' <=> FASTJavaMethodInvocation % {  
				#'name' <=> method asSymbol .
				#'arguments>name' <=> #'@anyArguments'. 	
			}.	
		}.
	}.