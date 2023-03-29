as yet unclassified
defineJavaDeclStatementforString: aStmtType

	" ex: aStmtType --> String
	  >> will be able to detect this: private static final String USER = ""student"";
	     and Not this: private static final String USER = props.getProperty(""user"");;
	"

	^ FASTJavaModel % {    	 
		#'allModelEntities' <=> FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> aStmtType asSymbol	.	
			#'declarators>expression>name' <=> #'@anyName'.
			#'declarators>famixVariable>name' <=> #'@decName'. 
			"#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'."
			#'declarators>expression>arguments' <=> FASTJavaStringLiteral % {  
				#'primitiveValue' <=> #'@myArgValue'
			}.
		} as: #'myStatement'.
	}.
	
	 