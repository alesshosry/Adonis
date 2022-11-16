as yet unclassified
_defineDeclParam: type usingInvocationWithArgs: method 

	^ FASTJavaModel % {  
		#'allModelEntities' <=>  FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> type asSymbol  .	
			#'declarators>famixVariable>name' <=> method asSymbol .
			#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'.
			#'declarators>expression>arguments>primitiveValue' <=> #'@primitiveValue'
		}. 
	}.