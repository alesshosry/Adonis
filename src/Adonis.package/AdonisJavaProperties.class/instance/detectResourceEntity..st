private - running
detectResourceEntity: aHostEntity

	| properties |
	aHostEntity path exists ifFalse: [ ^ nil ]. 
	properties := self parsePropertyFile: aHostEntity path. 
	^ self buildResourceEntityFor: (properties at: aHostEntity elementName )  