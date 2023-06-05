adding
addDefinitionForColumn: cdentifier usingTable: tdentifier
	
	|results defs|
	
	results := OrderedCollection new.
	cdentifier = '*' 
		ifTrue: [ 
				results := (self metadata getColumns select: [ :eachSQLColumn | 
					   eachSQLColumn owner name = tdentifier ])
				  asOrderedCollection 
			 ]
		ifFalse: [ 
			results := (self metadata getColumns select: [ :eachSQLColumn | 
				   eachSQLColumn name = cdentifier and:
					   eachSQLColumn owner name = tdentifier ])
				  asOrderedCollection 
				].
	results
		ifNotEmpty: [ 
			defs := OrderedCollection new.
			results do: [ :eachResult |
					defs add: (self buildResourceEntityFor: eachResult  )
				].
			^ defs  ] 
		ifEmpty: [ ^ {self buildResourceEntityFor: 'N/A' } ]