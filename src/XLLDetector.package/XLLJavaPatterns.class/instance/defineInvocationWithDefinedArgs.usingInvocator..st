as yet unclassified
defineInvocationWithDefinedArgs: method usingInvocator: name

	^ FASTJavaModel % {    
		#'allModelEntities' <=> FASTJavaMethodInvocation % { 
			#'name' <=>  method asSymbol .	
			#'receiver>famixVariable>name' <=> name asSymbol.
			#'arguments' <=> FASTJavaVariableExpression % {
				#'name' <=> #'@argName'.
			}.
		}.
	}.