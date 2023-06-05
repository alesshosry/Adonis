tests
testCreateNewTest

| pattern  nodes matches |

	pattern := AdonisXMLPatterns new 
					defineXMLPatternWithoutAttribute: '@aName' .
	 
	nodes := (XMLDOMParser parse: xmlTemplate ) root allNodes.
	matches := pattern match: nodes.
	
	self assert: matches isMatch.
	self assert: matches matchingContexts size = 11.