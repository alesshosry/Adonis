private - running
buildReferenceEntityForBinding: eachBinding
	^ ReferenceEntity new
		key: (eachBinding at: 'annotationKey') ;
		elementName: (eachBinding at: 'EntityName') ;
		path: (self extractXMLPathFromJava: (eachBinding at: 'FileName')) ;
		yourself