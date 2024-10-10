as yet unclassified
filterExcessiveResourceDependencies: allDependencies

	| filteredDeps excessiveResourceDeps|
	
	excessiveResourceDeps := OrderedCollection new.
	filteredDeps := (allDependencies groupedBy: [ :each | each referenceEntity isNil ]) at: true ifAbsent: [ {} ].
	
	filteredDeps ifNotEmpty: [  
			filteredDeps keysAndValuesDo: [ :k :v |  
    			excessiveResourceDeps add: (ExcessiveResourceDependency new
        			resourceEntity: v first resourceEntity;
        			referenceLanguage: v first referenceLanguage;
					resourceLanguage: v first resourceLanguage;
        			externalAgent: v first externalAgent;
        			yourself).
				].
		 ].
		
	^ excessiveResourceDeps