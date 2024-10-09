as yet unclassified
filterNonExclusiveReferenceDependencies: allDependencies

	^ (allDependencies groupedBy: [ :each | each resourceEntity ]) select: [ :each | each size > 1 ] 