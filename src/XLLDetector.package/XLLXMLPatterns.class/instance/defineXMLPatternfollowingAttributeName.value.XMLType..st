as yet unclassified
defineXMLPatternfollowingAttributeName: aName value: aValue XMLType: aXMLType
		
	"^ XMLNodeList % {  
			#'_>attributes' <=> XMLAttribute % {
				#'name' <=> aName asSymbol . 
				#'value' <=> aValue asSymbol . 
				#'parent>localName' <=> aXMLType asSymbol . 
			} as: #'myXMLElement'. 
		}."
		
	^ XMLNodeList % {  
			#'_>attributes' <=> XMLAttribute % {
				#'name' <=> #'ui:field'. 
				#'value' <=> aValue asSymbol.
				#'parent>localName' <=> aXMLType asSymbol . 
			} as: #'myXMLElement'. 
		}