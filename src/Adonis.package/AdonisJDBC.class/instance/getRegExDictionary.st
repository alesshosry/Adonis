as yet unclassified
getRegExDictionary

	|d|
	
	d := Dictionary new.
	d at:'select' put: '.*(\bfrom\b)*.+\bwhere\b.*|.*\bfrom\b.+(\bwhere\b)*.*'. 
	d at:'delete' put: '.*(\bdelete\b)*.+\bfrom\b.*|.*\bdelete\b.+(\bfrom\b)*.*'. 
	d at:'update' put: '.*(\bupdate\b)*.+\bset\b.*|.*\bupdate\b.+(\bset\b)*.*'. 
	d at:'insert' put: '.*(\binsert\b)*.+\binto\b.*|.*\binsert\b.+(\binto\b)*.*'.  
	d at:'join' put: '.*\bjoin\b.+.*'. 
	^ d