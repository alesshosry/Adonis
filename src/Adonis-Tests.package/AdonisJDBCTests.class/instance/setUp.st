initialization
setUp 
	
	super setUp.
	
	adonisJDBCTestObject := AdonisJDBCTestObject  new. 
	
	adonisJDBCTestObject generateFile: 'demo.properties' andFillData: (adonisJDBCTestObject propertiesTemplate ).   
	adonisJDBCTestObject generateFile: 'JdbcDelete.java' andFillData: (adonisJDBCTestObject jdbcDeleteTemplate  ).   
	adonisJDBCTestObject generateFile: 'ConnectionDemo.java' andFillData: (adonisJDBCTestObject connectionDemoTemplate  ).   
	adonisJDBCTestObject generateFile: 'IncreaseSalariesForDepartment.java' andFillData: (adonisJDBCTestObject increaseSalariesForDepartmentTemplate ).   
	
	mainModel := adonisJDBCTestObject generateMooseModelFromJSONFor:adonisJDBCTestObject jsonTemplate.	
	sqlModel := adonisJDBCTestObject generateFamixSQLModel: adonisJDBCTestObject sqlTemplate.