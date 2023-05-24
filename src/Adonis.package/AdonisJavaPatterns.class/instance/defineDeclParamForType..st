as yet unclassified
defineDeclParamForType: type 

	^ FASTJavaModel   % {    	 
		#'allModelEntities' <=>  FASTJavaVariableExpression  % { 
			#'famixVariable>declaredType>name' <=> type asSymbol. 
		}as: 'Variable'.
	} .