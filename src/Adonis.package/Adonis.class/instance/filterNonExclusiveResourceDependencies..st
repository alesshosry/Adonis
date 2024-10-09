as yet unclassified
filterNonExclusiveResourceDependencies: allDependencies

	^ (allDependencies groupedBy: [ :each | each referenceEntity ]) select: [ :each | each size > 1 ] 