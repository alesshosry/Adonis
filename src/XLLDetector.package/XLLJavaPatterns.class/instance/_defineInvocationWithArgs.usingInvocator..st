as yet unclassified
_defineInvocationWithArgs: method usingInvocator: name

	^ FASTJavaModel % {    
		#'allModelEntities' <=> FASTJavaMethodInvocation % { 
			#'name' <=> method asSymbol .	
			#'receiver>famixVariable>name' <=> name asSymbol .
			#'arguments' <=> FASTJavaStringLiteral % {
				#'primitiveValue' <=> #'@anyValue'.
			}. 
		}.
	}.