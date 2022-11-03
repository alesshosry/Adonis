tests
testXMLPatternDetectionBasedOnAttributeValue
	
	| pattern  nodes matches |

	pattern := XLLXMLPatterns new 
					defineXMLPatternfollowingAttributeName: '@aName' 
					value: 'idProduct1' 
					XMLType: '@aXMLType'.
	 
	nodes := (XMLDOMParser parse: xmlTemplate ) root allNodes.
	matches := pattern match: nodes.
	
	self assert: matches isMatch.
	self assert: matches matchingContexts size = 1.
	
					
	

	