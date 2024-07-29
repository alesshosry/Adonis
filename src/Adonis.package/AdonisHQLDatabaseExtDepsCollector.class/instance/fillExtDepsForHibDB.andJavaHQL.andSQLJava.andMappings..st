as yet unclassified
fillExtDepsForHibDB: aHibernateDatabaseLinksList andJavaHQL: aJavaHQLLinksList andSQLJava: aJavaSQLLinksList andMappings: aMappingList

	self hibernateDatabaseExtDeps: aHibernateDatabaseLinksList.
	self javaHQLExtDeps: aJavaHQLLinksList.
	self sqlJavaExtDeps: aJavaSQLLinksList.
	self mappings: aMappingList