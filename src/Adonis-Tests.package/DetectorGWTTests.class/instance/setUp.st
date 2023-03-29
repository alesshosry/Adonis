as yet unclassified
setUp 

	super setUp.
	
	xllGWTTestObject := XLLGWTTestObject  new. 
	
	xllGWTTestObject generateFile: 'HelloGWTWidget.ui.xml' andFillData: (xllGWTTestObject xmlTemplate). 
	xllGWTTestObject generateFile: 'AboutDialog.ui.xml' andFillData: (xllGWTTestObject xmlTemplate2). 
	
	mainModel  := xllGWTTestObject generateMooseModelFromMSE.	
	
	
	