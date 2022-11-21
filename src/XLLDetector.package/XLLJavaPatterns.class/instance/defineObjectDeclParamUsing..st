as yet unclassified
defineObjectDeclParamUsing: type

	^ FASTJavaModel % {    	 
		#'allModelEntities' <=> FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> type asSymbol .	
			#'declarators>famixVariable>name' <=> #'@anyName'. 
			#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'.
		}.
	}.