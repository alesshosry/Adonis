tests
testDefineJavaDeclStatementForMethod
 
	| pattern matches |

	pattern := XLLJavaPatterns new 
					defineJavaDeclStatement: '@anyStatementType' forMethod: '@anyMethod'. 
	
	fastJDBCModel do: [ :eachFastClass |   
		matches := pattern match: eachFastClass .
		self assert: matches isMatch.		   
	].