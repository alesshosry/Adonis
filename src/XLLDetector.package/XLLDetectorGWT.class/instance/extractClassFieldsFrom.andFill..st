as yet unclassified
extractClassFieldsFrom: attributeBindings andFill: xllGWTLinks 

	" Here we are extracting java Entities from bindings and start filling java entities details in Fields, only for a specific class"	
   attributeBindings do: [ :eachBinding | 
		xllGWTLinks do:[ :eachClass |
			(eachClass javaClassFullPath = (eachBinding at: 'SourceFilePath') ) 
				ifTrue: [  
					|xllGWTGWTField htmlElement|
					xllGWTGWTField := XLLGWTField new. 
					
					
					(self htmlElements includesKey: (eachBinding at: 'DeclaredType')) 
						ifTrue: [
								
								htmlElement := (self htmlElements at: (eachBinding at: 'DeclaredType')) first  .  "To be checked how to remove array"
								xllGWTGWTField javaEntityType: htmlElement. 
							] 
						ifFalse: [ 
								xllGWTGWTField javaEntityType: (eachBinding at: 'DeclaredType').
							 ]. 
					xllGWTGWTField javaEntityName: (eachBinding at: 'EntityName'). 
					eachClass fields add: xllGWTGWTField.
			]
		]		
	] 