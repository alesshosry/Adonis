as yet unclassified
getExternalDependency: hostEntity

	^ self defineExternalDependency
		  referenceEntity: hostEntity;
		  resourceEntity: (self detectResourceEntity: hostEntity);
		  yourself