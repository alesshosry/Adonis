private - running
detectResourceEntity: aHostEntity

	|  nodes   xmlBinding | 
	
	aHostEntity path exists ifFalse: [ ^nil ].

	nodes := (self parseXMLResourceFile: aHostEntity path).
	xmlBinding := self getBindingFromXMLNodes: nodes for: aHostEntity elementName.
	"match here with nodes and extract XML elemnt + build definition and return."
	xmlBinding ifNil: [ ^ nil].
	
	^ self buildResourceEntityFor: xmlBinding
	