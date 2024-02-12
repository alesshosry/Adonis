as yet unclassified
detectHibernateDatabaseLinksFor: aModel andSQLTables: anSQLModel 

	|adonisHibernateDB|
	adonisHibernateDB := AdonisHibernateDatabase new.
	adonisHibernateDB fillMainModel: aModel.
	adonisHibernateDB resourceContainers: (anSQLModel allWithType: FamixSQLTable).
	adonisHibernateDB detectAllLinks.
	^ adonisHibernateDB