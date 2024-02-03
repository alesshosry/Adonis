as yet unclassified
getRegExDictionary

	|d|
	
	d := Dictionary new.
	d at:'select' put: '.*(from)*.+where.*|.*from.+(where)*.*'. 
	d at:'delete' put: '.*(delete)*.+from.*|.*delete.+(from)*.*'. 
	d at:'update' put: '.*(update)*.+set.*|.*update.+(set)*.*'. 
	d at:'insert' put: '.*(insert)*.+into.*|.*insert.+(into)*.*'.  
	d at:'join' put: '.*join.+.*'. 
	^ d