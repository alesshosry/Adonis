as yet unclassified
defineSQLConditionWithoutIdentifiers2

	^ PSQLASTSelectWhereClause % { 
		#'condition>_*>expression' <=> PSQLASTAttributeAccess % {
			#'accessed>identifier' <=> #'@columnName'.	
			#'attributeIdentifier' <=> nil .
		}.
	}

	