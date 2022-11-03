tests
testDefineJavaDeclStatementForMethod
 
	| pattern matches |

	pattern := XLLJavaPatterns new 
					defineJavaDeclStatement: '@anyStatementType' forMethod: '@anyMethod'. 
	
	fastModels do: [ :eachFastModel |  
		matches := pattern match: eachFastModel.
		self assert: matches isMatch.		   
	].