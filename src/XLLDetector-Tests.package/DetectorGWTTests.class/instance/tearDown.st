as yet unclassified
tearDown 
	
	super tearDown.
	(Smalltalk imageDirectory asFileReference / 'HelloGWTWidget.ui.xml') asFileReference delete.
	(Smalltalk imageDirectory asFileReference / 'AboutDialog.ui.xml') asFileReference delete.
