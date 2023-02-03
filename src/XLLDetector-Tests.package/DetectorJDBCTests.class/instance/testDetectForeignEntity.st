tests
testDetectForeignEntity 

	| xllDetector  hostEntity foreignEntity |
	xllDetector := XLLDetectorJavaProperties new.
	xllDetector fillMainModel: mainModel.
	
   hostEntity := HostEntity new 
						elementName: 'user';
						key: 'getProperty'; 
						path: (Smalltalk imageDirectory asFileReference / 'demo.properties') asFileReference ;
						yourself.
	
	foreignEntity := xllDetector detectForeignEntity: hostEntity .
	
	self assert: foreignEntity isNotNil.
	self assert: foreignEntity element class equals: ByteString.
	self assert: foreignEntity element name equals: hostEntity elementName.
	
	self assert: foreignEntity element value equals: 'student'. 