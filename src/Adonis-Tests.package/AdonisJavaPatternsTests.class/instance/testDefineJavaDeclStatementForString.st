tests
testDefineJavaDeclStatementForString
	
	| pattern matches |

	pattern := AdonisJavaPatterns new 
					defineJavaDeclStatementforString: '@anyStatementType'.
	
	fastJDBCModel do: [ :eachFastModel |  
		matches := pattern match: eachFastModel.
		self assert: matches isMatch.		   
	].