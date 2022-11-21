as yet unclassified
collectQueriesPerModel: aFastModel

	|queries generalPattern |
	
	generalPattern := XLLJavaPatterns new.
	queries := OrderedCollection new.
	 	
		"Case of queries defined directly in statement declaration"
		queries addAll: ( self collectStringsOf: (self statementTypesAndInvocators) in: aFastModel). 
		
		"Case of queries defined in method invocations"
		queries addAll: (self collectStringsOf: (self statementInvocators) in: aFastModel forOriginalStatement: (self statementTypesAndInvocatorsWithoutParams)).
		
		"case of queries defined using properties"
		"connections addAll: ( self collectDependantStringsOf: (self connectionTypesAndInvocators) in: aFastModel). "
		
	^ queries.