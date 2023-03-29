tests
testDefineJavaMethodInvocationWithArgumentsOnly
 
	| pattern matches aClass aFastModel methods |

	pattern := XLLJavaPatterns new 
					defineInvocationWithArgs: '@aMethodName' usingInvocator: '@anyName'  asSymbol . 
 
	aClass := mainJDBCModel detect: [ :eachClass | eachClass name = 'JdbcDelete' ].
	
	aFastModel := aClass generateFastAndBind .
	
	matches := (pattern match: aFastModel).	
	self assert: matches isMatch.
	
	methods := (matches matchingContexts collect: [:eachContext | eachContext bindings at: 'aMethodName' ]) removeDuplicates. 
	self assert: (methods indexOf: 'executeUpdate') equals: 1.
	
	