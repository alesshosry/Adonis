parsing
parseQuery: aQuery

	| parsedQuery |
	(aQuery findString: 'call') > 0
		ifTrue: [ 
			parsedQuery := (aQuery findBetweenSubstrings:
				               { '{call '. '(?'. '()'. '}' } ) first ]
		ifFalse: [ " to check if there is another way we can detect the query type."
			parsedQuery := (aQuery copyReplaceAll: '?' with: '''?''') trim.

			(aQuery findString: 'select') > 0 ifTrue: [ 
				parsedQuery := PostgreSQLParser parseSelectQuery: parsedQuery ].

			(aQuery findString: 'update') > 0 ifTrue: [ 
				parsedQuery := PostgreSQLParser parseUpdateQuery: parsedQuery ].

			(aQuery findString: 'delete') > 0 ifTrue: [ 
				parsedQuery := PostgreSQLParser parseDeleteQuery: parsedQuery ].

			(aQuery findString: 'insert') > 0 ifTrue: [ 
				parsedQuery := PostgreSQLParser parseInsertQuery: parsedQuery ] ].

	^ parsedQuery