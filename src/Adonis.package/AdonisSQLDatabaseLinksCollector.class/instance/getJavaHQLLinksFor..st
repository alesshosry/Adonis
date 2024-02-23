as yet unclassified
getJavaHQLLinksFor: aSQLJavaLink

	^ self javaHQLLinks select: [ :each |
		  each resourceEntity element name = aSQLJavaLink resourceEntity element name ]