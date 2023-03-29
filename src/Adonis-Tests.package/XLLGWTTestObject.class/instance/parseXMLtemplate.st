as yet unclassified
parseXMLtemplate


	| parsedXML |
	 
	 parsedXML := XMLDOMParser parse: (self xmlTemplate) "asFileReference" .
	
	^ parsedXML.
