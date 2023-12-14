as yet unclassified
getLink: resourceEntity

	^ (self detectReferenceEntities: resourceEntity) collect: [ :each |
		  self defineLink
			  referenceEntity: each;
			  resourceEntity: resourceEntity;
			  yourself ]