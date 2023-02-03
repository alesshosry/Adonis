as yet unclassified
generateMooseModelFromJSON

	| mooseModel |
	
	mooseModel := FamixJavaModel new. 
	mooseModel importFromJSONStream: (self jsonTemplate) readStream . 	   
	mooseModel rootFolder: Smalltalk imageDirectory fullName  .
	
	^ mooseModel
	