as yet unclassified
getLink: referenceEntity 
	
	^self defineLink
		referenceEntity: referenceEntity;
	   resourceEntity: (self detectResourceEntity: referenceEntity );
	yourself .