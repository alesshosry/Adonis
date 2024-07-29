as yet unclassified
getExternalDependency: referenceEntity

	^ (self detectResourceEntities: referenceEntity) collect: [ :each |
		self defineExternalDependency
			  referenceEntity: referenceEntity ;
			  resourceEntity: each ;
			  yourself ]