as yet unclassified
getExternalDependency: resourceEntity
	^ (self detectReferenceEntities: resourceEntity) collect: [ :each | 
		  self defineExternalDependency
			  referenceEntity: each;
			  resourceEntity: resourceEntity;
			  yourself ]