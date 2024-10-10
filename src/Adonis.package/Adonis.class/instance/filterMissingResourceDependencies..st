as yet unclassified
filterMissingResourceDependencies: allDependencies

	| filteredDeps missingResourceDeps|

	missingResourceDeps := OrderedCollection new.
	filteredDeps := (allDependencies groupedBy: [ :each | each resourceEntity isNil ])  at: true ifAbsent: [ {} ].
	
	filteredDeps ifNotEmpty: [  
			filteredDeps keysAndValuesDo: [ :k :v |  
    			missingResourceDeps add: (MissingResourceDependency new
        			referenceEntity: v first referenceEntity;
        			referenceLanguage: v first referenceLanguage;
					resourceLanguage: v first resourceLanguage;
        			externalAgent: v first externalAgent;
        			yourself).
				].
		 ].
		
	^ missingResourceDeps