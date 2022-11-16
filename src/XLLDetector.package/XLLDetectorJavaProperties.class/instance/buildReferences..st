as yet unclassified
buildReferences: properties
	
	|references|
	references := OrderedCollection new.
	
	properties ifNotEmpty: [
		properties do: [ :eachProperty |
			
			references add: (self buildReferenceFor: 'getProperty' using: eachProperty ).  
		].			
	].
^ references.