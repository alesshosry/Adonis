as yet unclassified
buildReferences: properties
	
	|references|
	references := OrderedCollection new.
	
	properties ifNotEmpty: [
		properties do: [ :eachProperty |
			
			references add: (self buildHostEntityFor: 'getProperty' using: eachProperty ).  
		].			
	].
^ references.