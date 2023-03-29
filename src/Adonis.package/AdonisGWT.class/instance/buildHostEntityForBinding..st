private - running
buildHostEntityForBinding: eachBinding
	^ HostEntity new
		key: (eachBinding at: 'annotationKey') ;
		elementName: (eachBinding at: 'EntityName') ;
		path: (self extractXMLPathFromJava: (eachBinding at: 'FileName')) ;
		yourself