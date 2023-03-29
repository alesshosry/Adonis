as yet unclassified
detectJavaSQLLinks
	 |totalQueries refAndDef|
	totalQueries := OrderedCollection new.
	self mainModel allModelClasses do: [ :eachClass | 
		|fastModel connections xllLink queries|
		
		queries := OrderedCollection new.
		xllLink := super defineLink.
		fastModel := eachClass generateFastAndBind.
		
		connections := self collectConnectionInformation: fastModel.
		self connectToDatabaseAndFillData: connections.
		
		metadata ifNotNil: [  
			queries addAll: (self collectQueriesPerModel: fastModel). 
			totalQueries addAll: queries.
		].
		queries ifNotEmpty: [ 
			refAndDef := self buildReferencesAndDefinitions: queries .
			xllLink references addAll: refAndDef references.  
			xllLink definitions addAll: refAndDef definitions. 
		
			xllLink references ifNotEmpty: [  
				self detectedLinks add: xllLink.	
			].	
		].	 
	].

	
	 