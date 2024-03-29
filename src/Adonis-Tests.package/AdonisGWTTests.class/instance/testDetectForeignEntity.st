as yet unclassified
testDetectForeignEntity 


	| xllDetector  hostEntity foreignEntity |
	xllDetector := AdonisGWT new.
	xllDetector fillMainModel: mainModel.
	
   hostEntity := ReferenceEntity new
						elementName: 'greetingLabel';
						key: 'UiField'; 
						path: (Smalltalk imageDirectory asFileReference / 'HelloGWTWidget.ui.xml') asFileReference ;
						yourself.
	
	foreignEntity := xllDetector detectResourceEntity: hostEntity .
	
	self assert: foreignEntity isNotNil.
	self assert: foreignEntity element class equals: XMLAttribute .
	self assert: foreignEntity element name equals: 'ui:field' .
	
	self assert: foreignEntity element value equals: 'greetingLabel'