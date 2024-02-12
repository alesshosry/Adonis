as yet unclassified
detectAllLinks
 	
	|javaHQLDetector javaSQLQueriesDetector javaSQLResourceContainers hibernateDatabaseDetector|
	
	"1- Between mapping files and Java classes "
	javaHQLDetector := self detectJavaHQLLinksFor: self mainModel.
	javaSQLResourceContainers := javaHQLDetector detectedLinks collect:[:each | each resourceEntity element name ].
	
	"2- Between SQL queries and mapped Java classes"
	javaSQLQueriesDetector := self detectJavaSQLQueriesFor: self mainModel ofResourceContainers: javaSQLResourceContainers.
	
	"3- Between mapping files and database tables"
	hibernateDatabaseDetector := self detectHibernateDatabaseLinksFor: self mainModel andSQLTables: sqlModel.
	 	
	self detectedLinks add: javaHQLDetector detectedLinks.
	self detectedLinks add: javaSQLQueriesDetector detectedLinks.
	self detectedLinks add: hibernateDatabaseDetector detectedLinks .