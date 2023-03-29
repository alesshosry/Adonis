private - running
detectForeignEntity: aHostEntity

	|  nodes   xmlBinding | 
	
	aHostEntity path exists ifFalse: [ ^nil ].

	nodes := (self parseXMLForeignFile: aHostEntity path).
	xmlBinding := self getBindingFromXMLNodes: nodes for: aHostEntity elementName.
	"match here with nodes and extract XML elemnt + build definition and return."
	xmlBinding ifNil: [ ^ nil].
	
	^ self buildForeignEntityFor: xmlBinding
	