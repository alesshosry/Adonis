as yet unclassified
getLink: resourceEntity 
	^self defineLink
		referenceEntity: (self detectReferenceEntities: resourceEntity );
	   resourceEntity: resourceEntity;
	yourself .
	