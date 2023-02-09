private - running
detectForeignEntity: aHostEntity

	| properties |
	self halt.
	aHostEntity path exists ifFalse: [ ^ nil ]. 
	properties := self parsePropertyFile: aHostEntity path. 
	^ self buildForeignEntityFor: (properties at: aHostEntity elementName )  