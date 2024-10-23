private - running
detectResourceEntity: aReferenceEntity

	| nodes xmlBinding xmlPath|
	xmlPath := self extractXMLPathFromJava: aReferenceEntity path.
	xmlPath exists ifFalse: [ ^ nil ].

	nodes := self parseXMLResourceFile: xmlPath.
	xmlBinding := self
		              getBindingFromXMLNodes: nodes
		              for: aReferenceEntity elementName.
	"match here with nodes and extract XML elemnt + build definition and return."
	xmlBinding ifNil: [ ^ nil ].

	^ self buildResourceEntityFor: xmlBinding