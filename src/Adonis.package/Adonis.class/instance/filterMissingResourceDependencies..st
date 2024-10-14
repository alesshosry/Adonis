as yet unclassified
filterMissingResourceDependencies: allDependencies

	| filteredDeps missingResourceDeps|

	missingResourceDeps := OrderedCollection new.
	filteredDeps := (allDependencies groupedBy: [ :each | each resourceEntity element isNil ])  at: true ifAbsent: [ {} ].
	
	filteredDeps ifNotEmpty: [  
			filteredDeps do: [ :each |  
    			missingResourceDeps add: (MissingResourceDependency new
        			referenceEntity: each referenceEntity;
        			referenceLanguage: each referenceLanguage; 
        			externalAgent: each externalAgent;
        			yourself).
				].
		 ].
		
	^ missingResourceDeps