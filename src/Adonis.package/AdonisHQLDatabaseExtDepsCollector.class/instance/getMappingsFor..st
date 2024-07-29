as yet unclassified
getMappingsFor: aJavaHQLLink

	^ self mappings select: [ :eachMapping | eachMapping key = aJavaHQLLink resourceEntity element name ] 