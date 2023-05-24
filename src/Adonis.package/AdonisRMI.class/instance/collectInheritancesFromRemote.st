as yet unclassified
collectInheritancesFromRemote

	"References are annotations"
	
	| javaPattern bindings |
	
	bindings := OrderedCollection new.
	 
	javaPattern := AdonisJavaPatterns new defineJavaInheritanceFor: 'Remote'.
	bindings addAll: (javaPattern collectBindings: { #FamixJavaInterface. } for: mainModel) . 
	  
	^ bindings. 