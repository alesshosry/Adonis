as yet unclassified
getHQLDatabaseExtDepsFor: aMapping

	^ self hibernateDatabaseExtDeps select: [ :eachLink |
		eachLink resourceEntity element name = aMapping value.
		 ]