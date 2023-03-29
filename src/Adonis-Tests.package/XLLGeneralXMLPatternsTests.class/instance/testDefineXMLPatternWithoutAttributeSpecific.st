tests
testDefineXMLPatternWithoutAttributeSpecific
	
	| pattern  nodes matches |

	pattern := XLLXMLPatterns new 
					defineXMLPatternWithoutAttribute: 'products' .
	 
	nodes := (XMLDOMParser parse: xmlTemplate ) root allNodes.
	matches := pattern match: nodes.
	
	self assert: matches isMatch.
	self assert: matches matchingContexts size = 1.