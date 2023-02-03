as yet unclassified
buildRefAndDefUsing: bindings for: className

	|link classBindings refs defs|
	
	"link := self defineLink.
	
	""1- detect references ""
	classBindings := bindings select: [ :eachBinding | (eachBinding at: 'ClassName') = className ].
	classBindings do: [ :eachClassBinding |  
		self halt.
		link references add: (self buildReferenceFor: (eachClassBinding at: 'annotationKey') using: (eachClassBinding at: 'EntityName') ).
		link definitions addAll: (self detectDefinitions: eachClassBinding).
	]. 
	
   link references ifNotEmpty: [  
		self detectedLinks add: link.
	]. "
	refs := OrderedCollection new.
	defs := OrderedCollection new.
	
	classBindings := bindings select: [ :eachBinding | (eachBinding at: 'ClassName') = className ].
	
	classBindings do: [ :eachClassBinding |   
		refs add: (self buildReferenceFor: (eachClassBinding at: 'annotationKey') using: (eachClassBinding at: 'EntityName') ).
		defs addAll: (self detectDefinitions: eachClassBinding).
		
		refs do: [ :aRef |
			link := self defineLink. 
			link association: aRef -> (defs select: [ :aDef | aDef element = aRef elementName ]) first .  
			self detectedLinks add: link.
		].		
	]. 