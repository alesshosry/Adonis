as yet unclassified
extractWildcardsFromPattern: pattern ofModel: referenceModel

	| xllGWTLinks bindings fieldDetails handlersBindings |
	
	"This method is eaxtracting bindings found using reference model, starts filling link elements like class name, java source file path, xml source file reference, fields and handlers in order to link them with bindings found in a later stage using the definition pattern"
	
	xllGWTLinks := OrderedCollection new.

	" 1- Fill first link elements "
	bindings := pattern
		            collectBindings: { #ClassName. #SourceFilePath }
		            for: referenceModel.
	self fillLinkElements: xllGWTLinks using: bindings.

	" 2- fill fields"
	fieldDetails := pattern
		                collectBindings:
		                { #DeclaredType. #EntityName. #SourceFilePath.
		                #ClassName }
		                for: referenceModel.
	self extractFieldsFrom: fieldDetails andFill: xllGWTLinks.

	" 3- fill handlers"
	handlersBindings := pattern
		                 collectBindings:
		                 { #EventType. #AttributeName. #MethodName.
		                 #ClassName }
		                 for: referenceModel.
	self extractHandlers: handlersBindings andFill: xllGWTLinks.

	^ xllGWTLinks