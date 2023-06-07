initialization
setUp 

	| xllJDBCTestObject xllGWTTestObject |
	
	super setUp .
	 
	xllJDBCTestObject := AdonisJDBCTestObject  new. 
	
	xllJDBCTestObject generateFile: 'demo.properties' andFillData: (xllJDBCTestObject propertiesTemplate ).   
	xllJDBCTestObject generateFile: 'JdbcDelete.java' andFillData: (xllJDBCTestObject jdbcDeleteTemplate  ).   
	xllJDBCTestObject generateFile: 'ConnectionDemo.java' andFillData: (xllJDBCTestObject connectionDemoTemplate  ).   
	xllJDBCTestObject generateFile: 'IncreaseSalariesForDepartment.java' andFillData: (xllJDBCTestObject increaseSalariesForDepartmentTemplate ).   
	
	mainJDBCModel := xllJDBCTestObject generateMooseModelFromJSONFor: xllJDBCTestObject jsonTemplate .
	
	fastJDBCModel := mainJDBCModel allModelClasses collect: [ :eachClass |
		eachClass generateFastAndBind.		
	].	
	
	xllGWTTestObject := AdonisGWTTestObject new.
	mainGWTModel := xllGWTTestObject generateMooseModelFromMSEFor: xllGWTTestObject mseTemplate.
	