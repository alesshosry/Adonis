tests
testXMLPatternDetectionBasedOnXMLType
	
	| pattern  nodes matches |

	pattern := XLLXMLPatterns new 
					defineXMLPatternfollowingAttributeName: '@aName' 
					value: '@aValue' 
					XMLType: 'product'.
	 
	nodes := (XMLDOMParser parse: xmlTemplate ) root allNodes.
	matches := pattern match: nodes.
	
	self assert: matches isMatch.
	self assert: matches matchingContexts size equals: 2. 