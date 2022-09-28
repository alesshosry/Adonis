as yet unclassified
detectLinks

	|  referenceModel referencePattern xllLinks|
	
	" This is the main method that must be called by users who want to detect ALL links in projects GWT framework based. " 
	
	" 1- Reference pattern is filled using MoTion" 	 
	referenceModel := self fillReferenceModel. 
	
	" 2- Reference model is filled "
	referencePattern := self fillReferencePattern .
	
	" 3- MoTion match is applied and then we start extracting bindings and filling link elements"
	xllLinks := self extractWildcardsFromPattern: referencePattern ofModel: referenceModel.
	
	" 4- Fill properties: Fields and handlers"
	self fillFieldsAndHandlers: xllLinks .
	
	" 5- Test detected links."
	self detectedLinks: xllLinks.
		