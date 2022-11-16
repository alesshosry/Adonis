as yet unclassified
detectLinksForBindings: bindings

	|classes|
	
	classes := (bindings collect: [ :eachBinding | eachBinding at: 'ClassName' ] ) removeDuplicates.
	classes do: [ :eachClass |  
			self buildRefAndDefUsing: bindings for: eachClass.		
		].
	