as yet unclassified
filterNonExclusiveResourceDependencies: allDependencies
 
	| filteredDeps nonExclusiveResourceDeps|

	nonExclusiveResourceDeps := OrderedCollection new.
	filteredDeps := (allDependencies groupedBy: [ :each | each resourceEntity   ]) select: [ :each | each size > 1 ].
	
	filteredDeps ifNotEmpty: [  
			filteredDeps keysAndValuesDo: [ :k :v |  
    			nonExclusiveResourceDeps add: (NonExclusiveResourceDependency new
					resourceEntities: (v collect: [ :e | e resourceEntity ]);
        			referenceEntity: v first referenceEntity; 
        			referenceLanguage: v first referenceLanguage;
					resourceLanguage: v first resourceLanguage;
        			externalAgent: v first externalAgent;
        			yourself).
				].
		 ].
		
	^ nonExclusiveResourceDeps