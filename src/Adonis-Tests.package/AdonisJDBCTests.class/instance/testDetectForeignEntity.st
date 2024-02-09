tests
testDetectForeignEntity 

	| xllDetector  referenceEntity foreignEntity |
	xllDetector := AdonisJDBC new.
	xllDetector fillMainModel: mainModel.
	xllDetector resourceContainers: ((sqlModel allWithType: FamixSQLTable) collect: [:each | each name ]).
	
   referenceEntity := ReferenceEntity new
						elementName: 'delete from employees';
						key: 'delete';  
						yourself.
					
	foreignEntity := xllDetector detectResourceEntities: referenceEntity .
	
	self assert: foreignEntity isNotNil.
	self assert: foreignEntity first element equals: 'employees'. 