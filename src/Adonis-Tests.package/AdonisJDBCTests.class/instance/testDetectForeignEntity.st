tests
testDetectForeignEntity 

	| xllDetector  hostEntity foreignEntity |
	xllDetector := AdonisJavaProperties new.
	xllDetector fillMainModel: mainModel.
	
   hostEntity := ReferenceEntity new
						elementName: 'user';
						key: 'getProperty'; 
						path: (Smalltalk imageDirectory asFileReference / 'demo.properties') asFileReference ;
						yourself.
					
	foreignEntity := xllDetector detectResourceEntity: hostEntity .
	
	self assert: foreignEntity isNotNil.
	self assert: foreignEntity element class equals: ByteString. 
	self assert: foreignEntity element value equals: 'student'. 