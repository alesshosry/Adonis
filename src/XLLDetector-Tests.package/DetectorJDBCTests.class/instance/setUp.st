initialization
setUp 
	
	super setUp.
	"Should use XLLJDBCTestObject for testing and delete files on tearDown"
	
	mainModel := (MooseModelRoot root allModels at: 1). "To bechnaged  !!!!!!!!!!!!!!!!!!!!!!"
	