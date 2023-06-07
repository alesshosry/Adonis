as yet unclassified
generateMooseModelFromMSEFor: mseTemplate

	| mooseModel |
	
	mooseModel := FamixJavaModel new. 
	mooseModel importFromMSEStream: mseTemplate readStream . 	 
	mooseModel rootFolder: Smalltalk imageDirectory fullName  .
	
	^ mooseModel
	