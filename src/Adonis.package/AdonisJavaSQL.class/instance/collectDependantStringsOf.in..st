as yet unclassified
collectDependantStringsOf: aDictionary in: aFastModel

	| strings generalPattern |
	generalPattern := AdonisJavaPatterns new.
	strings := OrderedCollection new.

	aDictionary keysDo: [ :eachKey | 
		| values |
		values := aDictionary at: eachKey.
		values do: [ :eachValue | 
			strings addAll: (self
					 fetchPropertyParam:
						 ((generalPattern
								defineDeclParam: eachKey 
								usingInvocationWithDefinedArgs: eachValue )
							  collectBinding: #myArgs
							  for: aFastModel)
					 inModel: aFastModel) ] ].

	^ strings