as yet unclassified
detectLinksForClass: className

	|  referenceModel referencePattern xllLinks|
	 
	" This is the main method that must be called by users who want to detect links in projects GWT framework based. "
	" The main search here is a specific Java class, and not the whole project, otherwise a user should use detectLinks method. "
	
	
	" 1- Reference pattern for a specific class is filled using MoTion" 	
	referencePattern := self fillReferencePatternForClass: className .	
		
	" 2- Reference model is filled "
	referenceModel := self fillReferenceModel. 
	
	" 3- MoTion match is applied and then we start extracting bindings and filling link elements"
	xllLinks := self extractWildcardsFromPattern: referencePattern ofModel: referenceModel forClass: className.
	
	" 4- Fill properties: Fields and handlers"
	self fillFieldsAndHandlers: xllLinks .
	
	" 5- Test detected links."
	self detectedLinks: xllLinks.
		

	
	  
	