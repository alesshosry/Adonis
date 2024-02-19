as yet unclassified
fillLinksForHibJava: aHibernateJavaLinksList andJavaHQL: aJavaHQLLinksList andSQLJava: aJavaSQLLinksList

	self hibernateDatabaseLinks: aHibernateJavaLinksList .
	self javaHQLLinks: aJavaHQLLinksList.
	self sqlJavaLinks: aJavaSQLLinksList.
	
	