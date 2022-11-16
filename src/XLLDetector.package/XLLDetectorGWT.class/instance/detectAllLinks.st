as yet unclassified
detectAllLinks
	
   | bindings |

	bindings := self collectBindingsfromJavaClasses.
	
	bindings ifNotEmpty: [  
		self detectLinksForBindings: bindings.
		].