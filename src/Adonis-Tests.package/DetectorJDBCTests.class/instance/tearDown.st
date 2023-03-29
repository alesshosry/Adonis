tests
tearDown 

	super tearDown.
	(Smalltalk imageDirectory asFileReference / 'demo.properties') asFileReference delete.  
	(Smalltalk imageDirectory asFileReference / 'JdbcDelete.java') asFileReference delete. 
	(Smalltalk imageDirectory asFileReference / 'ConnectionDemo.java') asFileReference delete. 
	(Smalltalk imageDirectory asFileReference / 'IncreaseSalariesForDepartment.java') asFileReference delete.  