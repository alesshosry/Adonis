as yet unclassified
defineInvocationWithoutArgs: aMethod usingInvocator: invocator

	^ FASTJavaModel % {    
		#'allModelEntities' <=> FASTJavaMethodInvocation % { 
			#'name' <=> aMethod asSymbol.	
			#'receiver>famixVariable>name' <=> invocator asSymbol . 
		} as: #methodInvocation.
	}.