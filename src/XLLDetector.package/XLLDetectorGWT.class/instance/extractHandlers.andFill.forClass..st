as yet unclassified
extractHandlers: bindings andFill: xllLinks forClass: className
 
	" same as extractHandlers: andFill:  but for a specific class"
	
	bindings do:[:eachBinding | 
		
			|attributeName |
	
			attributeName := eachBinding at: 'AttributeName'.
			attributeName := attributeName reject: [ :c | c= $" ].
			eachBinding at: 'AttributeName' put: attributeName . 
				 
			xllLinks	do: [ :eachLink | 
						
					(eachLink javaClassName = className) ifTrue: [ 
						
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