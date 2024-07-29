as yet unclassified
detectHibernateDatabaseExtDepsFor: aModel andSQLTables: anSQLModel 

	|adonisHibernateDB|
	adonisHibernateDB := AdonisHBMFilesDatabase new.
	adonisHibernateDB fillMainModel: aModel.
	adonisHibernateDB resourceContainers: (anSQLModel allWithType: FamixSQLTable).
	adonisHibernateDB detectAllExternalDependencies.
	^ adonisHibernateDB