as yet unclassified
defineSQLConditionWithoutIdentifiers1

	^ PSQLASTSelectWhereClause % { 
		#'condition>_*>right' <=> PSQLASTAttributeAccess % {
			#'accessed>identifier' <=> #'@columnName'.	
			#'attributeIdentifier' <=> nil .
		}.
	}

	