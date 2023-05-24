as yet unclassified
getLink: hostEntity 
	^self defineLink
		referenceEntity: hostEntity;
	   resourceEntity: (self detectResourceEntity: hostEntity );
	yourself .