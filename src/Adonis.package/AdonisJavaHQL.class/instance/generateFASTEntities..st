as yet unclassified
generateFASTEntities: aFASTModel 

	| entitiesFAST |
	
	entitiesFAST := OrderedCollection new.
	(aFASTModel allModelClasses select: [ :eachClass | 
		 eachClass isInnerClass  = false ]) do: 
			[ :each | 
				| f |
				f := each generateFastAndBind.
				f name: each name.
				entitiesFAST add: f 
			].
		
	^ entitiesFAST