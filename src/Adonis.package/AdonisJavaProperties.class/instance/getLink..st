as yet unclassified
getLink: hostEntity
	^ self defineLink
		  hostEntity: hostEntity;
		  foreignEntity: (self detectForeignEntity: hostEntity);
		  yourself