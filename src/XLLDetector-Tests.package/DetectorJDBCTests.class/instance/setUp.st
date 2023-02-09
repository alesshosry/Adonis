initialization
setUp 
	
	super setUp.
	
	xllJDBCTestObject := XLLJDBCTestObject  new. 
	
	xllJDBCTestObject generateFile: 'demo.properties' andFillData: (xllJDBCTestObject propertiesTemplate ).   
	xllJDBCTestObject generateFile: 'JdbcDelete.java' andFillData: (xllJDBCTestObject jdbcDeleteTemplate  ).   
	xllJDBCTestObject generateFile: 'ConnectionDemo.java' andFillData: (xllJDBCTestObject connectionDemoTemplate  ).   
	xllJDBCTestObject generateFile: 'IncreaseSalariesForDepartment.java' andFillData: (xllJDBCTestObject increaseSalariesForDepartmentTemplate ).   
	
	mainModel := xllJDBCTestObject generateMooseModelFromJSON .	
	