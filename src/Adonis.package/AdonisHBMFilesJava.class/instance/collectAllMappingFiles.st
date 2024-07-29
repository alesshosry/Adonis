as yet unclassified
collectAllMappingFiles

	| pattern |
	pattern := AdonisGeneralPatterns new
		           getFileFromDirectoryBasedOnName: '.hbm.xml'.

	^  (pattern
			    collectBindings: { #myFile }
			    for: self mainModel rootFolder) collect: [ :each |
			   		each at: 'myFile' ] 
	 