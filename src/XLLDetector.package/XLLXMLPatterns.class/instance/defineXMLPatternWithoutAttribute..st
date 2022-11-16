as yet unclassified
defineXMLPatternWithoutAttribute: aName 
		
	^ XMLNodeList % {  
			#'_' <=> XMLElement % {
				#'name' <=> aName asSymbol .  
			}as: 'XMLElement'. 
		}.