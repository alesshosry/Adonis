as yet unclassified
buildReferences: bindings

	|references|
	references := OrderedCollection new.
	
	bindings do: [ :eachBinding |  
		references add: 
			(Reference new
				key: 'getProperty';
				elementName: (eachBinding at: 'arguments');
				yourself).		
		].
	
	^ references 
	

	