as yet unclassified
getLink: referenceEntity

	^ (self detectResourceEntities: referenceEntity) collect: [ :each |
		self defineLink
			  referenceEntity: referenceEntity ;
			  resourceEntity: each ;
			  yourself ]