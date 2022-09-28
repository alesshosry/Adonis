as yet unclassified
extractWildcardsFromPattern: pattern ofModel: referenceModel forClass: className

	| xllGWTLinks sourceFilePathBinding fieldsBindings handlersBindings |
	
	" Same process as extractWildcardsFromPattern: ofModel:  but for a specific class"
	
	xllGWTLinks := OrderedCollection new.

	sourceFilePathBinding := pattern
		                         collectBindings: { #SourceFilePath }
		                         for: referenceModel.
	self
		fillLinkElements: xllGWTLinks
		using: sourceFilePathBinding
		forClass: className.

	fieldsBindings := pattern
		                     collectBindings:
		                     { #DeclaredType. #EntityName. #SourceFilePath }
		                     for: referenceModel.
	self extractClassFieldsFrom: fieldsBindings andFill: xllGWTLinks.

	handlersBindings := pattern
		                 collectBindings:
		                 { #EventType. #AttributeName. #MethodName }
		                 for: referenceModel.
	self
		extractHandlers: handlersBindings
		andFill: xllGWTLinks
		forClass: className.

	^ xllGWTLinks