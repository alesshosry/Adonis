tests
testDefineJavaDeclStatementForString
	
	| pattern matches |

	pattern := XLLJavaPatterns new 
					defineJavaDeclStatementforString: '@anyStatementType'.
	
	fastModels do: [ :eachFastModel |  
		matches := pattern match: eachFastModel.
		self assert: matches isMatch.		   
	].