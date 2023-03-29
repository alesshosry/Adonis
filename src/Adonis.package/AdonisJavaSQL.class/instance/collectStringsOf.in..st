as yet unclassified
collectStringsOf: aDictionary in: aFastModel

	|generalPattern strings|
	generalPattern := AdonisJavaPatterns new.
	strings := OrderedCollection new.

	aDictionary keysDo: [ :eachKey | 
		|values|		
		values := aDictionary at: eachKey. 
		values do: [ :eachValue |
			
			"1- collect Strings embedded directly"
			strings addAll:((generalPattern defineDeclParam: eachKey usingInvocationWithArgs: eachValue ) collectBinding: #primitiveValue for: aFastModel).
		
			"2- collect defined Strings "
			strings addAll: (self fetchParam: ((generalPattern defineDeclParam: eachKey usingInvocationWithDefinedArgs: eachValue) collectBinding: #anyArguments for: aFastModel) inModel: aFastModel ) flattened . 
		]. 
	].
	
	^ strings
	
	