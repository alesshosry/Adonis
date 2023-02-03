private - running
getBindingFromXMLNodes: nodes for: referenceName
	self xmlAttributes do:  [ :eachAttribute | | bindings |
		bindings := (XLLXMLPatterns new
			defineXMLPatternfollowingAttributeName: eachAttribute
			value: referenceName
			XMLType: '@anyType')
			collectBinding: 'myXMLElement' for: nodes.
		bindings ifNotEmpty: [ ^ bindings first ]
	].
	^nil