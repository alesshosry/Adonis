as yet unclassified
buildDefinitions: propertiesDictionary

	|definitons|
	definitons := OrderedCollection new.
	
	propertiesDictionary keysDo:[ :eachKey |
		definitons add:
			(ForeignEntity new
				elementName: eachKey; "should change to link it with available references only"
				element: (propertiesDictionary at: eachKey);
				yourself). 
			]. 
	
	^ definitons 