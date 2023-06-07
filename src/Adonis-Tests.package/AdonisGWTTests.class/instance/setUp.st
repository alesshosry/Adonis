as yet unclassified
setUp 

	super setUp.
	
	adonisGWTTestObject := AdonisGWTTestObject  new. 
	
	adonisGWTTestObject generateFile: 'HelloGWTWidget.ui.xml' andFillData: (adonisGWTTestObject xmlTemplate). 
	adonisGWTTestObject generateFile: 'AboutDialog.ui.xml' andFillData: (adonisGWTTestObject xmlTemplate2). 
	
	mainModel  := adonisGWTTestObject generateMooseModelFromMSEFor: adonisGWTTestObject mseTemplate .	
	
	
	