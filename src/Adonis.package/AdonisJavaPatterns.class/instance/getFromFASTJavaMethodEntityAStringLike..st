as yet unclassified
getFromFASTJavaMethodEntityAStringLike: aStringOrRegEx

^ FASTJavaMethodEntity % { 
		#name <=> #'@methodName'.
		#'children*' <=> FASTJavaStringLiteral % { 
			#primitiveValue <=> aStringOrRegEx .
	} as: #myLiteralString.
}.