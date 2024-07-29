as yet unclassified
getJavaHQLExtDepsFor: aSQLJavaLink

	^ self javaHQLExtDeps select: [ :each |
		  each resourceEntity element name = aSQLJavaLink resourceEntity element name ]