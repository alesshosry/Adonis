as yet unclassified
definePrimitiveDeclParam: declaratorName using: type

	^ FASTJavaModel % {    	 
		#'allModelEntities' <=> FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> type asSymbol .	
			#'declarators>famixVariable>name' <=> declaratorName asSymbol. 
			#'declarators>expression>primitiveValue' <=> #'@anyValues'.
			#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'.
		}.
	}.