as yet unclassified
detectPropertiesLocator: propsInvocator of: aFastModel 

	| bindings inputFilesDecl filesPath|
	
	filesPath := OrderedCollection new. 
	
	"step 1: look for (load) invocated methods"
	bindings := XLLJavaPatterns new defineJavaMethodInvocationWithParameters: 'load' andInvocator: propsInvocator.  
	
	"step 2: get arguments"
	inputFilesDecl := bindings collectBinding: 'arguments' for: aFastModel.		
	
	inputFilesDecl do:[:eachDecl | 		
				
		"step 3: search for these arguments declarations if declared as FileInputStream"
		bindings := XLLJavaPatterns new defineJavaDeclStatementWithArgs: 'FileInputStream' forSpecificDecl: eachDecl.
		
		"step 4: eaxtract file location"
		filesPath addAll:( bindings collectBinding: 'argValue' for: aFastModel).	
	].
	
	"normally shoud be one file, cz we're looping over properties invocators, and each one should have only one fileInputStream defined"
	^ filesPath first.
	