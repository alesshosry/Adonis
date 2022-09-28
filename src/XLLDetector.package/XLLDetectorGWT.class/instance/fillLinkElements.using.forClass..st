as yet unclassified
fillLinkElements: xllGWTLinks using: bindings forClass: className

	" Same as fillLinkElements: using: but for a specific class" 
	
	bindings do: [ :eachBinding | 
			|xllGWTLink | 
			xllGWTLink := XLLGWTLink new .
			xllGWTLink javaClassFullPath: (eachBinding at:'SourceFilePath').
			xllGWTLink uiXMLFullPath: ( self extractXMLPathFromJava: (eachBinding at:'SourceFilePath')) .	
			xllGWTLink uiXMLFullPath exists ifTrue: [ 
				xllGWTLink parsedXML: (self parseXMLFileReference: xllGWTLink uiXMLFullPath).	
				xllGWTLink javaClassName: className. 
				xllGWTLinks add: xllGWTLink. 
			] .			
	].

	