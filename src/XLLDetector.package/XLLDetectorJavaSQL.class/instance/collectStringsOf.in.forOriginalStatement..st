as yet unclassified
collectStringsOf: aDictionary in: aFastModel forOriginalStatement: aStatementDictionary

	|generalPattern strings|
	generalPattern := XLLJavaPatterns new.
	strings := OrderedCollection new.

	aStatementDictionary keysDo: [ :eachStatementType | 
		
		|invocators methods|
		
		invocators := (generalPattern defineObjectDeclParamUsing: eachStatementType ) collectBinding: #anyName for: aFastModel. 
		invocators do: [ :eachInvocator | 
			aDictionary keysDo: [ : eachKey |
				methods := (aDictionary at: eachKey).
				methods do: [ :eachMethod | 
					strings addAll: ((generalPattern defineInvocationWithArgs: eachMethod usingInvocator: eachInvocator ) collectBinding: #anyValue for: aFastModel) . 	
					strings addAll: (self fetchParam: ((generalPattern defineInvocationWithDefinedArgs: eachMethod  usingInvocator: eachInvocator ) collectBinding: #argName for: aFastModel) inModel: aFastModel ) flattened .
				].					
			]. 
		].		
	].
	
	^ strings
	
	