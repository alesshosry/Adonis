as yet unclassified
collectConnectionInformation: aFastModel
	
	"This method is supposed to collect connection info and declarator name"
	"I think here we identification of when connection is depende=ant and when it is not"
		
	|connections generalPattern |
	
	generalPattern := AdonisJavaPatterns new.
	connections := OrderedCollection new. 
				
		"Case of connections defined directly"
		connections addAll: ( self collectStringsOf: (self connectionTypesAndInvocators) in: aFastModel). 
		
		"case of connections defined using properties"
		"connections addAll: ( self collectDependantStringsOf: (self connectionTypesAndInvocators) in: aFastModel). "
		
	^ connections.