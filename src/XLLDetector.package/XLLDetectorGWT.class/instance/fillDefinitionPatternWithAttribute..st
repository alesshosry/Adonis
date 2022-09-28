as yet unclassified
fillDefinitionPatternWithAttribute: attributeValue 
 
		" here we are filling the definition pattern that is specific for fields that are not used in Java class, but the are referencing xml attributes through some handlers, and in this case, the type is not defined. So we just rely on the name of the attribute. "

	   ^ XMLNodeList % {  
			#'_>attributes' <=> XMLAttribute % {
				#'name' <=> #'ui:field'. 
				#'value' <=> attributeValue asSymbol. 
			} as: #'myXMLElement'. 
		}.