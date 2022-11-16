as yet unclassified
buildRefAndDefUsing: bindings for: className

	|link classBindings |
	
	link := self defineLink.
	
	"1- detect references "
	classBindings := bindings select: [ :eachBinding | (eachBinding at: 'ClassName') = className ].
	classBindings do: [ :eachClassBinding |  
		link references add: (self buildReferenceFor: (eachClassBinding at: 'annotationKey') using: (eachClassBinding at: 'EntityName') ).
		link definitions addAll: (self detectDefinitions: eachClassBinding).
	]. 
	
   link references ifNotEmpty: [  
		self detectedLinks add: link.
	]. 