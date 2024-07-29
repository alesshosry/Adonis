private - running
detectResourceEntity: aReferenceEntity

	|  nodes   xmlBinding | 
	
	aReferenceEntity path exists ifFalse: [ ^nil ].

	nodes := (self parseXMLResourceFile: aReferenceEntity path).
	xmlBinding := self getBindingFromXMLNodes: nodes for: aReferenceEntity elementName.
	"match here with nodes and extract XML elemnt + build definition and return."
	xmlBinding ifNil: [ ^ nil].
	
	^ self buildResourceEntityFor: xmlBinding
	