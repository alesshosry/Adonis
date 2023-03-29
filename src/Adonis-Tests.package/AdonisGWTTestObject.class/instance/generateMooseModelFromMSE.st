as yet unclassified
generateMooseModelFromMSE

	| mooseModel |
	
	mooseModel := FamixJavaModel new. 
	mooseModel importFromMSEStream: (self mseTemplate) readStream . 	 
	
	"mseFile := Smalltalk imageDirectory asFileReference  / 'hellogwt.mse'  .
	mseFile writeStreamDo: [ :str | mooseModel exportToMSEStream: str ].
	t := mseFile readStreamDo: [ :stream |
		newMooseModel importFromMSEStream: stream
	]. "
	
   
	 mooseModel rootFolder: Smalltalk imageDirectory fullName  .
	
	^ mooseModel
	