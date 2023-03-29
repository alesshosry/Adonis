as yet unclassified
defineSQLConditionWithIdentifiers

	^ PSQLASTSelectWhereClause % { 
		#'condition>_*>right' <=> PSQLASTAttributeAccess % {
			#'accessed>identifier' <=> #'@tableIdentifier'.
			#'attributeIdentifier>identifier' <=> #'@columnName'.		
		}. 
	}

	