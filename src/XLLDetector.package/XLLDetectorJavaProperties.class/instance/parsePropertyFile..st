parsing
parsePropertyFile: aFile

	|textFile propertiesDictionary|
	  
	"Reading properties file"
	textFile := (aFile asFileReference readStreamDo: [ :stream | stream contents asString ]) trim.

	"manual parse" 
	propertiesDictionary := Dictionary new.

	('\n' asRegex split: textFile) do:[:eachProperty | 
		|parts|
		
		parts := '=' split: eachProperty.	
		propertiesDictionary at: parts first put: parts second.		
	].

	^ propertiesDictionary.
