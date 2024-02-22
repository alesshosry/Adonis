as yet unclassified
getHQLDatabaseLinkFor: aMapping

	^ self hibernateDatabaseLinks select: [ :eachLink |
		eachLink resourceEntity element name = aMapping value.
		 ]