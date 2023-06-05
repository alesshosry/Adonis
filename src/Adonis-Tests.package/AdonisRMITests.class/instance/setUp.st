initialization
setUp 
	
	super setUp.
	
	adonisRMITestObject  := AdonisRMITestObject  new. 
	
	adonisRMITestObject generateFile: 'ApplicationServer.java' andFillData: (adonisRMITestObject applicationServerTemplate).   
	adonisRMITestObject generateFile: 'client.java' andFillData: (adonisRMITestObject clientTemplate).   
	adonisRMITestObject generateFile: 'HelloServant.java' andFillData: (adonisRMITestObject helloServantTemplate ).   
	adonisRMITestObject generateFile: 'HelloService.java' andFillData: (adonisRMITestObject helloServiceTemplate ).   
	
	mainModel := adonisRMITestObject generateMooseModelFromJSONFor: adonisRMITestObject serverJSONTemplate .	
	clientModel := adonisRMITestObject generateMooseModelFromJSONFor: adonisRMITestObject clientJSONTemplate .	
	