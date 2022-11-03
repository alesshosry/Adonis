tests
testXMLPatternDetectionBasedOnAttributeName
	
	| pattern  nodes matches |

	pattern := XLLXMLPatterns new 
					defineXMLPatternfollowingAttributeName: 'id' 
					value: '@aValue' 
					XMLType: '@aXMLType'.
	 
	nodes := (XMLDOMParser parse: xmlTemplate ) root allNodes.
	matches := pattern match: nodes.
	
	self assert: matches isMatch.
	self assert: matches matchingContexts size = 4.

	
	
					
	

	