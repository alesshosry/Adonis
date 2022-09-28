as yet unclassified
collectBindingsOf: aPattern for: aWildcardVariable from: model
	
	"In this method we are collecting all bindings of a specific variable from a model"	 
			
	^ 
		aPattern collectBindings: 
			{aWildcardVariable asSymbol} for: (model). 