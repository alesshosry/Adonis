as yet unclassified
getLink: referenceEntity 
	
"	^self defineLink
		referenceEntity: referenceEntity;
	   resourceEntity: (self detectResourceEntity: referenceEntity );
	yourself ."
	
^ (self detectResourceEntities: referenceEntity) collect: [ :each |
		
		  self defineLink
			  referenceEntity: referenceEntity ;
			  resourceEntity: each ;
			  yourself ]