tests
testXMLPatternDetectionBasedOnAttributeName
	
	| pattern  nodes matches |

	pattern := AdonisXMLPatterns new 
					defineXMLPatternfollowingAttributeName: 'id' 
					value: '@aValue' 
					XMLType: '@aXMLType'.
	 
	nodes := (XMLDOMParser parse: xmlTemplate ) root allNodes.
	matches := pattern match: nodes.
	
	self assert: matches isMatch.
	self assert: matches matchingContexts size equals: 4.

	
	
					
	

	