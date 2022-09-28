parsing
parseXMLFileReference: fileReference
	
	|parsedXML root nodes|

	"This method is parsing XML file using an external library: XML-Parser "
	 
	parsedXML := XMLDOMParser parse: fileReference .
	root := parsedXML root.
	nodes := 	root allNodes.
			
	^ nodes.