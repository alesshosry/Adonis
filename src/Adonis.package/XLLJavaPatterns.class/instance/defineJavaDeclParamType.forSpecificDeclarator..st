as yet unclassified
defineJavaDeclParamType: aStmtType forSpecificDeclarator: aDeclarator

	" ex:	aStmtType --> FileInputStream 
			aDeclarator --> input
	  >> will be able to detect this only : FileInputStream input = new FileInputStream(""Database Configuration/demo.properties""); 
	  >> will NOT be able to detect this : FileInputStream anotherOne = new FileInputStream(""Database Configuration/demo.properties"");  unless aDeclarator is passed as as a wilcard '@anyInput'
	"
	
	^ FASTJavaModel % {    	 
		#'allModelEntities' <=> FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> aStmtType asSymbol .	
			#'declarators>famixVariable>name' <=> aDeclarator asSymbol. 
			#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'.
			#'declarators>expression>arguments>primitiveValue' <=> #'@argValue'.
		} as: #'myStatement'.
	}.