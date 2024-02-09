as yet unclassified
sqlTemplate

	^ '(
	(SQL-Model.Table (id: 1)
		(name ''employees''))
	(SQL-Model.Column (id: 2)
		(name ''department'')
		(table (ref: 1)))
	(SQL-Model.Column (id: 3)
		(name ''last_name'')
		(table (ref: 1)))
	(SQL-Model.Column (id: 4)
		(name ''first_name'')
		(table (ref: 1)))
)'