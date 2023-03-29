private - running
detectForeignEntity: aHostEntity

	| properties |
	aHostEntity path exists ifFalse: [ ^ nil ]. 
	properties := self parsePropertyFile: aHostEntity path. 
	^ self buildForeignEntityFor: (properties at: aHostEntity elementName )  