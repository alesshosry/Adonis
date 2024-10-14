as yet unclassified
generateFASTEntities: anObject

	| objectsFAST |
	objectsFAST := OrderedCollection new.
	(anObject allModelClasses reject: [ :eachClass | 
		 eachClass isInnerClass or: [ eachClass class = FamixJavaParametricClass and: [ eachClass concreteParameters notEmpty ] ] ]) do: [ :each |
		| f |
		f := each generateFastAndBind.
		f name: each name.
		objectsFAST add: f ].

	^ objectsFAST