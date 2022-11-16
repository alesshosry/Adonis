as yet unclassified
defineJavaDeclStatement: aStmtType forMethod: aMethod

	"will be able to detect this:  int rowsAffected = myStmt.executeUpdate(DELETE_FROM_EMPLOYEES); 
	aStmtType --> int 
	aMethod --> executeUpdate"

	^ FASTJavaModel   % {    	 
		#'allModelEntities' <=>  FASTJavaVarDeclStatement % { 
			#'type>typeName>name' <=> aStmtType asSymbol	.	
			#'declarators>famixVariable>name' <=> #'@anyName'. 
			#'declarators>famixVariable>sourceAnchor>fileName' <=> #'@javaFileName'.
			#'declarators>expression' <=> FASTJavaMethodInvocation % {  
				#'name' <=> aMethod asSymbol .
				#'arguments>name' <=> #'@myArgs'. "Pay Attention sometimes no args are available, create orMatches or another method ? I guess orMatches is better except that it is not working properly when both sides are true :? --> to be fixed."		
			}	
		}as: #'myStatement'.
	}.