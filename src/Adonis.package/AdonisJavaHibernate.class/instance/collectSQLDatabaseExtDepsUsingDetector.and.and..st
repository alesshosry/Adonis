as yet unclassified
collectSQLDatabaseExtDepsUsingDetector: javaHQLDetector and: hibernateDatabaseDetector and: javaSQLQueriesDetector

	| sqlDBCollector mappings |
	"1- Mapped tables and classes in mapping files."
	mappings := self collectTablesAndClassesUsing: javaHQLDetector.

	"2- collecting indirect links between solution and database"
	sqlDBCollector := AdonisHQLDatabaseExtDepsCollector new.
	sqlDBCollector
		fillExtDepsForHibDB: hibernateDatabaseDetector detectedExternalDependencies
		andJavaHQL: javaHQLDetector detectedExternalDependencies
		andSQLJava: javaSQLQueriesDetector detectedExternalDependencies
		andMappings: mappings.

	sqlDBCollector collectSQLDatabaseExtDeps.
	^ sqlDBCollector