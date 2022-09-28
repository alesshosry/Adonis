as yet unclassified
extractFieldsFrom: attributeBindings andFill: xllGWTLinks
 

	" Here we are extracting java Entities from bindings, per each className and sourcefilePath, and start filling java entities details in Fields"	
   
	attributeBindings do: [ :eachBinding | 
		xllGWTLinks do:[ :eachClass |
			(eachClass javaClassFullPath = (eachBinding at: 'SourceFilePath') and:  
				eachClass javaClassName = (eachBinding at: 'ClassName')) 
				ifTrue: [  
					|xllGWTGWTField|
					xllGWTGWTField := XLLGWTField new.
					xllGWTGWTField javaEntityType: (eachBinding at: 'DeclaredType').
					xllGWTGWTField javaEntityName: (eachBinding at: 'EntityName'). 
					eachClass fields add: xllGWTGWTField.
			]
		]		
	].