as yet unclassified
collectSQLDatabaseLinksUsingDetector: javaHQLDetector and: hibernateDatabaseDetector and: javaSQLQueriesDetector

	| sqlDBCollector mappings |
	"1- Mapped tables and classes in mapping files."
	mappings := self collectTablesAndClassesUsing: javaHQLDetector.

	"2- collecting indirect links between solution and database"
	sqlDBCollector := AdonisSQLDatabaseLinksCollector new.
	sqlDBCollector
		fillLinksForHibDB: hibernateDatabaseDetector detectedLinks
		andJavaHQL: javaHQLDetector detectedLinks
		andSQLJava: javaSQLQueriesDetector detectedLinks
		andMappings: mappings.

	sqlDBCollector collectSQLDatabaseLinks.
	^ sqlDBCollector