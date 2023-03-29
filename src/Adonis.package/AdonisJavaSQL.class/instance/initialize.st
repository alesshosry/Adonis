initialization
initialize 
	
	super initialize .
	dbConnection := PgConnection new. 
	metadata := OrderedCollection new.