as yet unclassified
generateMooseModelFromJSONFor: aTemplate

	| mooseModel |
	
	mooseModel := FamixJavaModel new. 
	mooseModel importFromJSONStream: aTemplate readStream . 	   
	mooseModel rootFolder: Smalltalk imageDirectory fullName . 
	
	^ mooseModel .