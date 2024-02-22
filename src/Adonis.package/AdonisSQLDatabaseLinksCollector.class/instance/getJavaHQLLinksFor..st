as yet unclassified
getJavaHQLLinksFor: aSQLJavaLink

	^ self javaHQLLinks select: [ :each |
		  each resourceEntity = aSQLJavaLink resourceEntity ]