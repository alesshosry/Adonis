as yet unclassified
generateFamixSQLModel: anSQLTemplate

| mooseModel |
	
	mooseModel := FamixSQLModel new. 
	mooseModel importFromMSEStream: anSQLTemplate readStream . 	 
	
	^ mooseModel
	