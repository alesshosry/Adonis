as yet unclassified
detectAllExternalDependencies

	| javaHQLDetector javaSQLQueriesDetector javaSQLResourceContainers hibernateDatabaseDetector sqlDBCollector |
	"1- Between mapping files and Java classes "
	javaHQLDetector := self detectJavaHQLExtDepsFor: self mainModel.
	javaSQLResourceContainers := javaHQLDetector detectedExternalDependencies collect: [
		                             :each | each resourceEntity element ].

	"2- Between SQL queries and mapped Java classes"
	javaSQLQueriesDetector := self
		                          detectJavaSQLQueriesFor: self mainModel
		                          ofResourceContainers:
		                          javaSQLResourceContainers.

	"3- Between mapping files and database tables"
	hibernateDatabaseDetector := self
		                             detectHibernateDatabaseExtDepsFor:
		                             self mainModel
		                             andSQLTables: sqlModel.

	"4- Now collect indirect links"
	sqlDBCollector := self collectSQLDatabaseExtDepsUsingDetector: javaHQLDetector and: hibernateDatabaseDetector  and: javaSQLQueriesDetector .
	
	self detectedExternalDependencies add: javaHQLDetector detectedExternalDependencies.
	self detectedExternalDependencies add: javaSQLQueriesDetector detectedExternalDependencies.
	self detectedExternalDependencies add: hibernateDatabaseDetector detectedExternalDependencies.
	self detectedExternalDependencies add: sqlDBCollector detectedExternalDependencies