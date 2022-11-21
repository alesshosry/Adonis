as yet unclassified
connectToDatabaseAndFillData: connectionProperties
	 
	"Implementation not finished yet !!"
	dbConnection hostname ifNil:  [    
			"not accurate just for testing"
			dbConnection := 
				PgConnection
					hostname: 'localhost'
					port: 5432
					database: 'aless'
					user: 'aless'
					password: 'test'.
			
			metadata := (PgMetadata database: 'aless' connection: dbConnection) extractMetadata.
		]	
	 ifNotNil: [  
			"check if connectionProperties same as dbConnectionProperties"
			"if same, check if metadata is empty, then extract and fill metadata using these properties"  
		]. 
	
	
 

 