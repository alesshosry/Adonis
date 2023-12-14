as yet unclassified
defineXMLPatternfollowingElementName: elementName attributeName1: attributeName1 attributeName2: attributeName2


^ XMLNodeList % {
			#elements <=> XMLElement % {
								#name <=> elementName asSymbol .
								#attributes <=> XMLAttribute % { 
									#name <=> attributeName1 asSymbol.
									#value <=> #'@attributeValue1'		
								}.
								#attributes <=> XMLAttribute % { 
									#name <=> attributeName2 asSymbol .
									#value <=> #'@attributeValue2'		
								}.
			} as: 'myXMLElement'.
		}.