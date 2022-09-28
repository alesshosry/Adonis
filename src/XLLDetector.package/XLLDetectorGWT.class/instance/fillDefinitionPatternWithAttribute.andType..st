as yet unclassified
fillDefinitionPatternWithAttribute: attributeValue  andType: attributeType

	"	This is the main method to fill definition pattern in order to extract all refernced xml elements based on their type and name. 
		Not all elements are defined as <xmlElementType ui:field='fieldName' > . Some of them are defined as  <xmlElement type='aType' field='aField' . 
		And this is why we are using orMatches to match all possible cases but any matching element is saved in all cases in myXMlElement."

 	^ XMLNodeList % {  
			#'_>attributes' <=> XMLAttribute % {
				#'value' <=> attributeType asSymbol.  
				#'parent' <=> #'@myXMLElement' 
			} . 
			#'_>attributes' <=> XMLAttribute % {
				#'value' <=> attributeValue asSymbol. 
				#'parent' <=> #'@myXMLElement' 
			}		 
		} orMatches: 
		XMLNodeList % {  
			#'_>attributes' <=> XMLAttribute % {
				#'name' <=> #'ui:field'. 
				#'value' <=> attributeValue asSymbol.
				#'parent>localName' <=> attributeType asSymbol . 
			} as: #'myXMLElement'. 
		}.