as yet unclassified
getRegExDictionary

	|d|
	
	d := Dictionary new.
	d at:'select' put: '.*(\bfrom\b)*.+\bwhere\b.*|.*\bfrom\b.+(\bwhere\b)*.*'. 
	d at:'delete' put: '.*delete from.+'. 
	d at:'update' put: '.*(\bupdate\b)*.+\bset\b.*|.*\bupdate\b.+(\bset\b)*.*'. 
	d at:'insert' put: '.*insert into.+'. 
	d at:'join' put: '.*\bjoin\b.+.*'. 
	^ d