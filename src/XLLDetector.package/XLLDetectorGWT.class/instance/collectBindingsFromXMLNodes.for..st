as yet unclassified
collectBindingsFromXMLNodes: nodes for: referenceName

	|generalPattern attributes bindings|
	
	attributes := self xmlAttributes .
	bindings := OrderedCollection new.
	
	attributes do: [ :eachAttribute |  
		generalPattern := XLLXMLPatterns new defineXMLPatternfollowingAttributeName: eachAttribute value: referenceName XMLType: '@anyType'.
		bindings := generalPattern collectBinding: 'myXMLElement' for: nodes. 
	].
	
^ bindings