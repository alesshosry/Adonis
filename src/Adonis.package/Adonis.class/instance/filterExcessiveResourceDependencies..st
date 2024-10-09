as yet unclassified
filterExcessiveResourceDependencies: allDependencies

	^ (allDependencies groupedBy: [ :each | each referenceEntity isNil ]) at: true.