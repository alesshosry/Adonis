as yet unclassified
extractColumnsIdentifiers: columns

	|columnsIdentifiers|
	columnsIdentifiers := OrderedCollection new.
	
	columns do: [ :eachColumn |
			
			|xllColumn|
			xllColumn := AdonisSQLColumn new.
					
			eachColumn class = PSQLASTWildCard  
				ifTrue: [ xllColumn name: '*' ]
				ifFalse: [ 
					eachColumn attributeIdentifier ifNil: [ 
				 		xllColumn name: eachColumn accessed identifier.
					] 
					ifNotNil: [ 
						eachColumn attributeIdentifier class = PSQLASTIdentifier 
							ifTrue: [ 
									xllColumn name: eachColumn attributeIdentifier identifier. 
									xllColumn alias: eachColumn accessed identifier. 
								]
							ifFalse: [ xllColumn name: '*' ]			
				]. 
			].	
			columnsIdentifiers add: xllColumn .		 	
		].

	^ columnsIdentifiers .