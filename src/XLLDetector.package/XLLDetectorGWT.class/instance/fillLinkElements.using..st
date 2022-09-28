as yet unclassified
fillLinkElements: xllGWTLinks using: bindings

	" Here we start creating a link and fill common elements like java class name, definition model path ... "
	
	bindings do: [ :eachBinding | 
			|xllGWTLink | 
			xllGWTLink := XLLGWTLink new .
			xllGWTLink javaClassFullPath: (eachBinding at:'SourceFilePath'). 
			xllGWTLink uiXMLFullPath: ( self extractXMLPathFromJava: (eachBinding at:'SourceFilePath')) .	 
			xllGWTLink uiXMLFullPath exists ifTrue: [ 
				xllGWTLink parsedXML: (self parseXMLFileReference: xllGWTLink uiXMLFullPath).			
				xllGWTLink javaClassName:  (eachBinding at:'ClassName'). 
				xllGWTLinks add: xllGWTLink. 
			].				
	].
 

			
	