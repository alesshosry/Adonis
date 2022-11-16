as yet unclassified
detectPropertiesLocator: propsInvocator of: aFastModel

	| pattern inputFilesDecl filesPath |
	filesPath := OrderedCollection new.

	"step 1: look for (load) invocated methods"
	pattern := XLLJavaPatterns new
		           _defineInvocationWithDefinedArgs: 'load'
		           usingInvocator: propsInvocator.

	"step 2: get arguments"
	inputFilesDecl := pattern collectBinding: 'argName' for: aFastModel.

	inputFilesDecl do: [ :eachDecl | "step 3: search for these arguments declarations if declared as FileInputStream"
		pattern := XLLJavaPatterns new
			           _defineJavaDeclParamType: 'FileInputStream'
			           forSpecificDeclarator: eachDecl.

		"step 4: eaxtract file location"
		filesPath addAll:
			(pattern collectBinding: 'argValue' for: aFastModel) ].

	"normally shoud be one file, cz we're looping over properties invocators, and each one should have only one fileInputStream defined"
	^ filesPath first