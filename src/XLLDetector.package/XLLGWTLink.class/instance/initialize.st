accessing
initialize 
	
super initialize.
self javaClassFullPath: ''.
self javaClassName: ''.
self uiXMLFullPath: ''. 
self fields: OrderedCollection new.
self handlers: OrderedCollection new.