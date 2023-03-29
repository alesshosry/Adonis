accessing
defineSQLKeys

^ Dictionary new 
	at: 'table' put: {'update'. 'from'. 'insert into'. 'delete from'. 'drop table'. 'drop table if exists' };
	at: 'column' put: {'select'. 'where'. 'set'. '('. 'set' };
	at: 'functionCall' put: { '{call '. 'drop procdure if exists' }.
	
	
	