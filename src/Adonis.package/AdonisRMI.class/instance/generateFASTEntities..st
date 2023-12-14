as yet unclassified
generateFASTEntities: anObject 

	| objectsFAST |
	
	objectsFAST := OrderedCollection new.
	(anObject allModelClasses select: [ :eachClass | 
		 eachClass isInnerClass  = false ]) do: 
			[ :each | 
				| f |
				f := each generateFastAndBind.
				f name: each name.
				objectsFAST add: f 
			].
		
	^ objectsFAST