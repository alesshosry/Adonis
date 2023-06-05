running
tearDown 

	super tearDown.
	(Smalltalk imageDirectory asFileReference / 'ApplicationServer.java') asFileReference delete.  
	(Smalltalk imageDirectory asFileReference / 'client.java') asFileReference delete. 
	(Smalltalk imageDirectory asFileReference / 'HelloServant.java') asFileReference delete. 
	(Smalltalk imageDirectory asFileReference / 'HelloService.java') asFileReference delete.  