tests
testDefineJavaDeclStatementForMethod
 
	| pattern matches |

	pattern := AdonisJavaPatterns new 
					defineJavaDeclStatement: '@anyStatementType' forMethod: '@anyMethod'. 
	
	fastJDBCModel do: [ :eachFastClass |   
		matches := pattern match: eachFastClass .
		self assert: matches isMatch.		   
	].