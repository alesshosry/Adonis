as yet unclassified
fillFieldsAndHandlers: xllLinks

			" Here we are extracting bindings found using the definition model, and we continue filling link fields and handlers with the convinent values found."
			
			xllLinks do: [ :eachLink | 		
				eachLink fields do: [ :eachField | 
				
			 	| xmlPattern bindings |  
				xmlPattern := self fillDefinitionPatternWithAttribute: eachField javaEntityName  andType: eachField javaEntityType .
				
				bindings := xmlPattern collectBindings: {#myXMLElement.} for: (eachLink parsedXML). 
				(bindings size > 0) ifTrue: [ 
						eachField xmlElement: ((bindings first) at: 'myXMLElement'). 						
					].				
			].
		
			eachLink handlers do: [ :eachHandler | 
				(eachHandler field isNil) ifTrue:[
			
						| xmlPattern bindings |  
						xmlPattern := self fillDefinitionPatternWithAttribute: eachHandler attributeName .
						bindings := xmlPattern collectBindings: {#myXMLElement.} for: (eachLink parsedXML). 
						(bindings size > 0) ifTrue: [ 
							eachHandler field: XLLGWTField new.
							eachHandler field xmlElement: ((bindings first) at: 'myXMLElement'). 
							eachHandler field javaEntityName: eachHandler attributeName.				
						]							
					]. 			
				].						
			].