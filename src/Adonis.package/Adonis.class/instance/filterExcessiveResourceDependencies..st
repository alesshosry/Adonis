as yet unclassified
filterExcessiveResourceDependencies: allDependencies

	| filteredDeps excessiveResourceDeps|
	
	excessiveResourceDeps := OrderedCollection new.
	filteredDeps := (allDependencies groupedBy: [ :each | each referenceEntity isNil ]) at: true ifAbsent: [ {} ].
	
	filteredDeps ifNotEmpty: [  
			filteredDeps do: [ :each |  
    			excessiveResourceDeps add: (ExcessiveResourceDependency new
        			resourceEntity: each resourceEntity; 
					resourceLanguage: each resourceLanguage;
        			externalAgent: each externalAgent;
        			yourself).
				].
		 ].
		
	^ excessiveResourceDeps