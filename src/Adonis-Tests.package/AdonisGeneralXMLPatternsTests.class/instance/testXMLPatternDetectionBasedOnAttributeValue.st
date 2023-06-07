tests
testXMLPatternDetectionBasedOnAttributeValue
	
	| pattern  nodes matches |

	pattern := AdonisXMLPatterns new 
					defineXMLPatternfollowingAttributeName: '@aName' 
					value: 'idProduct1' 
					XMLType: '@aXMLType'.
	 
	nodes := (XMLDOMParser parse: xmlTemplate ) root allNodes.
	matches := pattern match: nodes.
	
	self assert: matches isMatch.
	self assert: matches matchingContexts size equals: 1.
	
					
	

	