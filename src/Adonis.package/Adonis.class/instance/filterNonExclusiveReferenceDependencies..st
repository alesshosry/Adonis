as yet unclassified
filterNonExclusiveReferenceDependencies: allDependencies

	| filteredDeps nonExclusiveReferenceDeps|

	nonExclusiveReferenceDeps := OrderedCollection new.
	filteredDeps := (allDependencies groupedBy: [ :each | { each referenceEntity elementName. each referenceEntity key. each referenceEntity path } ]) select: [ :each | each size > 1 ].
	
	filteredDeps ifNotEmpty: [  
			filteredDeps keysAndValuesDo: [ :k :v |  
    			nonExclusiveReferenceDeps add: (NonExclusiveReferenceDependency new
					referenceEntities: (v collect: [ :e | e referenceEntity ] );
        			resourceEntity: v first resourceEntity; 
        			referenceLanguage: v first referenceLanguage;
					resourceLanguage: v first resourceLanguage;
        			externalAgent: v first externalAgent;
        			yourself).
				].
		 ].
		
	^ nonExclusiveReferenceDeps
			
		