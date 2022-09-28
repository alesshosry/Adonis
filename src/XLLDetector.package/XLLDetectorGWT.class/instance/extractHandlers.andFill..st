as yet unclassified
extractHandlers: bindings andFill: xllLinks
 
	" This method is eactracting all java handlers details from bindings and start filling them in handlers object."
	" Each handler has a field. There are cases where this field is already defined by the developer in the Java class, and we are linking it in this method ; 
	There are other cases where handlers have a field that is not defined in the class. However we cannot find it here, it must be linked in a later stage afer searching for bindings in definition model. "
	

	bindings do:[:eachBinding | 
		
			|attributeName className|
	
			" Moose is returung attibute names with colons linke: ""addButton"" ; So we are removing them in the below lines of code. "
			attributeName := eachBinding at: 'AttributeName'.
			attributeName := attributeName reject: [ :c | c= $" ].
			eachBinding at: 'AttributeName' put: attributeName . 
			 
			className := eachBinding at: 'ClassName'.
			 
			xllLinks	do: [ :eachLink | 
						
					(eachLink javaClassName  = className) ifTrue: [ 
						
						|handler field|
						
						handler := XLLGWTHandler  new.
						handler attributeName: attributeName.
						handler eventType: (eachBinding at: 'EventType').
						handler methodName: (eachBinding at: 'MethodName'). 
						field := (eachLink fields select:[ :each | each javaEntityName = attributeName ]).
						(field isNotEmpty) ifTrue: [ 
							handler field: field first.
						].	
						eachLink handlers add: handler.		 
					].					
			].
	].